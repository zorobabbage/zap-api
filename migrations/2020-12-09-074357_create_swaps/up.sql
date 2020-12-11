CREATE TABLE swaps (
  id BIGSERIAL PRIMARY KEY,
  transaction_hash VARCHAR NOT NULL,
  event_sequence INTEGER NOT NULL,
  block_height INTEGER NOT NULL,
  block_timestamp TIMESTAMP NOT NULL,
  initiator_address VARCHAR NOT NULL,
  token_address VARCHAR NOT NULL,
  token_amount NUMERIC(38, 0) NOT NULL,
  zil_amount NUMERIC(38, 0) NOT NULL,
  is_sending_zil BOOLEAN NOT NULL
);

CREATE INDEX index_initiator_address ON swaps (initiator_address);
CREATE INDEX index_block_timestamp ON swaps (block_timestamp DESC);
CREATE UNIQUE INDEX index_event ON swaps (transaction_hash, event_sequence)
