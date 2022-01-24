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
struct TYPE_3__ {int /*<<< orphan*/  key; int /*<<< orphan*/  ue; int /*<<< orphan*/  oe; int /*<<< orphan*/ * u; int /*<<< orphan*/ * o; } ;
typedef  TYPE_1__ pdf_crypt ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_aes ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_AES_DECRYPT ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_crypt *crypt, unsigned char *password, size_t pwlen, int ownerkey, unsigned char *validationkey)
{
	unsigned char hash[32];
	unsigned char iv[16];
	fz_aes aes;

	if (pwlen > 127)
		pwlen = 127;

	FUNC4(ctx, password, pwlen,
		(ownerkey ? crypt->o : crypt->u) + 32,
		ownerkey ? crypt->u : NULL, validationkey);
	FUNC4(ctx, password, pwlen,
		(ownerkey ? crypt->o : crypt->u) + 40,
		(ownerkey ? crypt->u : NULL),
		hash);

	FUNC3(iv, 0, sizeof(iv));
	if (FUNC1(&aes, hash, 256))
		FUNC2(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=256)");
	FUNC0(&aes, FZ_AES_DECRYPT, 32, iv, ownerkey ? crypt->oe : crypt->ue, crypt->key);
}