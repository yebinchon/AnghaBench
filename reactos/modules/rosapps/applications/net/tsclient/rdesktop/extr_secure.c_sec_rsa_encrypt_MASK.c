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
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SEC_EXPONENT_SIZE ; 
 int SEC_MAX_MODULUS_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC11(uint8 * out, uint8 * in, int len, uint32 modulus_size, uint8 * modulus,
		uint8 * exponent)
{
	BN_CTX *ctx;
	BIGNUM mod, exp, x, y;
	uint8 inr[SEC_MAX_MODULUS_SIZE];
	int outlen;

	FUNC10(modulus, modulus_size);
	FUNC10(exponent, SEC_EXPONENT_SIZE);
	FUNC8(inr, in, len);
	FUNC10(inr, len);

	ctx = FUNC1();
	FUNC6(&mod);
	FUNC6(&exp);
	FUNC6(&x);
	FUNC6(&y);

	FUNC2(modulus, modulus_size, &mod);
	FUNC2(exponent, SEC_EXPONENT_SIZE, &exp);
	FUNC2(inr, len, &x);
	FUNC7(&y, &x, &exp, &mod, ctx);
	outlen = FUNC3(&y, out);
	FUNC10(out, outlen);
	if ((uint32)outlen < modulus_size)
		FUNC9(out + outlen, 0, modulus_size - outlen);

	FUNC5(&y);
	FUNC4(&x);
	FUNC5(&exp);
	FUNC5(&mod);
	FUNC0(ctx);
}