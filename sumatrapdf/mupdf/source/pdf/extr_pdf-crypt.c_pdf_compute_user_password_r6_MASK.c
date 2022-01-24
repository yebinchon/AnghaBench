#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ pdf_crypt ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_aes ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_AES_ENCRYPT ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned char*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t,unsigned char*,int /*<<< orphan*/ *,unsigned char*) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, pdf_crypt *crypt, unsigned char *password, size_t pwlen, unsigned char *outputpw, unsigned char *outputencryption)
{
	unsigned char validationsalt[8];
	unsigned char keysalt[8];
	unsigned char hash[32];
	unsigned char iv[16];
	fz_aes aes;

	/* Step a) - Generate random salts. */
	FUNC2(ctx, validationsalt, FUNC6(validationsalt));
	FUNC2(ctx, keysalt, FUNC6(keysalt));

	/* Step a) - Compute 32 byte hash given password and validation salt. */
	FUNC7(ctx, password, pwlen, validationsalt, NULL, outputpw);
	FUNC4(outputpw + 32, validationsalt, FUNC6(validationsalt));
	FUNC4(outputpw + 40, keysalt, FUNC6(keysalt));

	/* Step b) - Compute 32 byte hash given password and user salt. */
	FUNC7(ctx, password, pwlen, keysalt, NULL, hash);

	/* Step b) - Use hash as AES-key when encrypting the file encryption key. */
	FUNC5(iv, 0, sizeof(iv));
	if (FUNC1(&aes, hash, 256))
		FUNC3(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=256)");
	FUNC0(&aes, FZ_AES_ENCRYPT, 32, iv, crypt->key, outputencryption);
}