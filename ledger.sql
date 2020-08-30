CREATE TABLE bitcoin_users (
    id INTEGER PRIMARY KEY,
    wallet TEXT,
    ballance INTEGER NULL);
    
INSERT INTO bitcoin_users(wallet, ballance) 
    VALUES ("sdf54ser8cbh35f6f57t", 0.5);
INSERT INTO bitcoin_users(wallet, ballance) 
    VALUES ("s1rt68er8cre87ef5ewt", 1);
INSERT INTO bitcoin_users(wallet) 
    VALUES ("bnmv5bcnbcrfe7e5876t");
    
SELECT * FROM bitcoin_users;

CREATE TABLE transactions (
    id INTEGER PRIMARY KEY,
    sender INTEGER NULL,
    recipient INTEGER NULL,
    transfer INTEGER NULL);
    
INSERT INTO transactions(sender, recipient, transfer) 
    VALUES (1,2,0.25);
    
SELECT a.wallet AS sender, b.wallet AS recipient, transactions.transfer
    FROM transactions
    JOIN bitcoin_users a
    ON transactions.sender = a.id
    JOIN bitcoin_users b
    ON transactions.recipient = b.id;
    
UPDATE bitcoin_users
    SET ballance = 1 + 0.25
    WHERE wallet = "s1rt68er8cre87ef5ewt";
UPDATE bitcoin_users
    SET ballance = 0.5 - 0.25
    WHERE wallet = "sdf54ser8cbh35f6f57t";

SELECT * FROM bitcoin_users;

DELETE FROM bitcoin_users
    WHERE wallet = "bnmv5bcnbcrfe7e5876t";
    
SELECT * FROM bitcoin_users;