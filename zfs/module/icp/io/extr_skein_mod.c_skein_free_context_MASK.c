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
typedef  int /*<<< orphan*/  crypto_ctx_t ;
typedef  int /*<<< orphan*/ * SKEIN_CTX_LVALUE ;

/* Variables and functions */
 int CRYPTO_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(crypto_ctx_t *ctx)
{
	if (FUNC0(ctx) != NULL) {
		FUNC1(FUNC0(ctx), sizeof (*FUNC0(ctx)));
		FUNC2(FUNC0(ctx), sizeof (*FUNC0(ctx)));
		SKEIN_CTX_LVALUE(ctx) = NULL;
	}

	return (CRYPTO_SUCCESS);
}