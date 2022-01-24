#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  fz_sha512 ;
typedef  int /*<<< orphan*/  fz_sha384 ;
typedef  int /*<<< orphan*/  fz_sha256 ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_aes ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_AES_ENCRYPT ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC14(fz_context *ctx, unsigned char *password, size_t pwlen, unsigned char salt[8], unsigned char *ownerkey, unsigned char hash[32])
{
	unsigned char data[(128 + 64 + 48) * 64];
	unsigned char block[64];
	int block_size = 32;
	size_t data_len = 0;
	int i, j, sum;

	fz_sha256 sha256;
	fz_sha384 sha384;
	fz_sha512 sha512;
	fz_aes aes;

	/* Step 1: calculate initial data block */
	FUNC3(&sha256);
	FUNC4(&sha256, password, pwlen);
	FUNC4(&sha256, salt, 8);
	if (ownerkey)
		FUNC4(&sha256, ownerkey, 48);
	FUNC2(&sha256, block);

	for (i = 0; i < 64 || i < data[data_len * 64 - 1] + 32; i++)
	{
		/* Step 2: repeat password and data block 64 times */
		FUNC12(data, password, pwlen);
		FUNC12(data + pwlen, block, block_size);
		if (ownerkey)
			FUNC12(data + pwlen + block_size, ownerkey, 48);
		data_len = pwlen + block_size + (ownerkey ? 48 : 0);
		for (j = 1; j < 64; j++)
			FUNC12(data + j * data_len, data, data_len);

		/* Step 3: encrypt data using data block as key and iv */
		if (FUNC1(&aes, block, 128))
			FUNC11(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=%d)", 128);
		FUNC0(&aes, FZ_AES_ENCRYPT, data_len * 64, block + 16, data, data);

		/* Step 4: determine SHA-2 hash size for this round */
		for (j = 0, sum = 0; j < 16; j++)
			sum += data[j];

		/* Step 5: calculate data block for next round */
		block_size = 32 + (sum % 3) * 16;
		switch (block_size)
		{
		case 32:
			FUNC3(&sha256);
			FUNC4(&sha256, data, data_len * 64);
			FUNC2(&sha256, block);
			break;
		case 48:
			FUNC6(&sha384);
			FUNC7(&sha384, data, data_len * 64);
			FUNC5(&sha384, block);
			break;
		case 64:
			FUNC9(&sha512);
			FUNC10(&sha512, data, data_len * 64);
			FUNC8(&sha512, block);
			break;
		}
	}

	FUNC13(data, 0, sizeof(data));
	FUNC12(hash, block, 32);
}