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
struct TYPE_3__ {unsigned char* o; unsigned char* u; int /*<<< orphan*/  key; int /*<<< orphan*/  ue; int /*<<< orphan*/  oe; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ pdf_crypt ;
typedef  int /*<<< orphan*/  fz_sha256 ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_aes ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_AES_DECRYPT ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, pdf_crypt *crypt, unsigned char *password, size_t pwlen, int ownerkey, unsigned char *validationkey)
{
	unsigned char buffer[128 + 8 + 48];
	fz_sha256 sha256;
	fz_aes aes;

	/* Step 2 - truncate UTF-8 password to 127 characters */

	if (pwlen > 127)
		pwlen = 127;

	/* Step 3/4 - test password against owner/user key and compute encryption key */

	FUNC6(buffer, password, pwlen);
	if (ownerkey)
	{
		FUNC6(buffer + pwlen, crypt->o + 32, 8);
		FUNC6(buffer + pwlen + 8, crypt->u, 48);
	}
	else
		FUNC6(buffer + pwlen, crypt->u + 32, 8);

	FUNC3(&sha256);
	FUNC4(&sha256, buffer, pwlen + 8 + (ownerkey ? 48 : 0));
	FUNC2(&sha256, validationkey);

	/* Step 3.5/4.5 - compute file encryption key from OE/UE */

	if (ownerkey)
	{
		FUNC6(buffer + pwlen, crypt->o + 40, 8);
		FUNC6(buffer + pwlen + 8, crypt->u, 48);
	}
	else
		FUNC6(buffer + pwlen, crypt->u + 40, 8);

	FUNC3(&sha256);
	FUNC4(&sha256, buffer, pwlen + 8 + (ownerkey ? 48 : 0));
	FUNC2(&sha256, buffer);

	/* clear password buffer and use it as iv */
	FUNC7(buffer + 32, 0, sizeof(buffer) - 32);
	if (FUNC1(&aes, buffer, crypt->length))
		FUNC5(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=%d)", crypt->length);
	FUNC0(&aes, FZ_AES_DECRYPT, 32, buffer + 32, ownerkey ? crypt->oe : crypt->ue, crypt->key);
}