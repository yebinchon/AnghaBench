#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_4__ {scalar_t__ method; } ;
struct TYPE_5__ {TYPE_1__ strf; } ;
typedef  TYPE_2__ pdf_crypt ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_arc4 ;
typedef  int /*<<< orphan*/  fz_aes ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_AES_DECRYPT ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 scalar_t__ PDF_CRYPT_AESV2 ; 
 scalar_t__ PDF_CRYPT_AESV3 ; 
 scalar_t__ PDF_CRYPT_RC4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(fz_context *ctx, pdf_crypt *crypt, pdf_obj *obj, unsigned char *key, int keylen)
{
	unsigned char *s;
	int i, n;

	if (FUNC13(ctx, obj))
		return;

	if (FUNC14(ctx, obj))
	{
		s = (unsigned char *)FUNC16(ctx, obj);
		n = FUNC17(ctx, obj);

		if (crypt->strf.method == PDF_CRYPT_RC4)
		{
			fz_arc4 arc4;
			FUNC3(&arc4, key, keylen);
			FUNC2(&arc4, s, s, n);
		}

		if (crypt->strf.method == PDF_CRYPT_AESV2 || crypt->strf.method == PDF_CRYPT_AESV3)
		{
			if (n == 0)
			{
				/* Empty strings are permissible */
			}
			else if (n & 15 || n < 32)
				FUNC5(ctx, "invalid string length for aes encryption");
			else
			{
				unsigned char iv[16];
				fz_aes aes;
				FUNC6(iv, s, 16);
				if (FUNC1(&aes, key, keylen * 8))
					FUNC4(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=%d)", keylen * 8);
				FUNC0(&aes, FZ_AES_DECRYPT, n - 16, iv, s + 16, s);
				/* delete space used for iv and padding bytes at end */
				if (s[n - 17] < 1 || s[n - 17] > 16)
					FUNC5(ctx, "aes padding out of range");
				else
					FUNC15(ctx, obj, n - 16 - s[n - 17]);
			}
		}
	}

	else if (FUNC11(ctx, obj))
	{
		n = FUNC8(ctx, obj);
		for (i = 0; i < n; i++)
		{
			FUNC18(ctx, crypt, FUNC7(ctx, obj, i), key, keylen);
		}
	}

	else if (FUNC12(ctx, obj))
	{
		n = FUNC10(ctx, obj);
		for (i = 0; i < n; i++)
		{
			FUNC18(ctx, crypt, FUNC9(ctx, obj, i), key, keylen);
		}
	}
}