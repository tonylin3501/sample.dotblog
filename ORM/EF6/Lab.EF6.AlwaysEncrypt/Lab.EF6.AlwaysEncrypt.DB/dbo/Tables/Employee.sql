﻿CREATE TABLE [dbo].[Employee] (
    [Id]       UNIQUEIDENTIFIER    ENCRYPTED WITH (
     COLUMN_ENCRYPTION_KEY = [yao],
     ALGORITHM = N'AEAD_AES_256_CBC_HMAC_SHA_256',
     ENCRYPTION_TYPE = DETERMINISTIC
    )  ,
    [Name]     NVARCHAR (10)  COLLATE Latin1_General_BIN2  ENCRYPTED WITH (
     COLUMN_ENCRYPTION_KEY = [yao],
     ALGORITHM = N'AEAD_AES_256_CBC_HMAC_SHA_256',
     ENCRYPTION_TYPE = DETERMINISTIC
    ) NOT NULL,
    [Age]      INT  ENCRYPTED WITH (
     COLUMN_ENCRYPTION_KEY = [yao],
     ALGORITHM = N'AEAD_AES_256_CBC_HMAC_SHA_256',
     ENCRYPTION_TYPE = DETERMINISTIC
    )                         NULL,
    [CreateAt] DATETIME       NOT NULL,
    [ModifyAt] DATETIME       NULL,
    [Bonus]    NUMERIC (3, 1) NULL,
    [Birthday] DATE           NULL,
    [SequenceId] INT NOT NULL IDENTITY, 
    CONSTRAINT [PK_Employee_Id] PRIMARY KEY NONCLUSTERED ([Id] ASC)
);


GO

CREATE CLUSTERED INDEX [CLIX_Employee_SequenceId] ON [dbo].[Employee] ([SequenceId] DESC)
