#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  X ;
struct TYPE_7__ {size_t bCnt; int hashBitLen; int /*<<< orphan*/ * T; } ;
struct TYPE_6__ {int /*<<< orphan*/ * X; TYPE_3__ h; int /*<<< orphan*/ * b; } ;
typedef  TYPE_1__ Skein1024_Ctxt_t ;

/* Variables and functions */
 int /*<<< orphan*/  OUT_FINAL ; 
 size_t SKEIN1024_BLOCK_BYTES ; 
 int SKEIN1024_STATE_WORDS ; 
 int /*<<< orphan*/  SKEIN_FAIL ; 
 int SKEIN_SUCCESS ; 
 int /*<<< orphan*/  SKEIN_T1_FLAG_FINAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_3__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

int
FUNC8(Skein1024_Ctxt_t *ctx, uint8_t *hashVal)
{
	size_t i, n, byteCnt;
	uint64_t X[SKEIN1024_STATE_WORDS];

	/* catch uninitialized context */
	FUNC1(ctx->h.bCnt <= SKEIN1024_BLOCK_BYTES, SKEIN_FAIL);

	ctx->h.T[1] |= SKEIN_T1_FLAG_FINAL;	/* tag as the final block */
	/* zero pad b[] if necessary */
	if (ctx->h.bCnt < SKEIN1024_BLOCK_BYTES)
		FUNC7(&ctx->b[ctx->h.bCnt],
		    SKEIN1024_BLOCK_BYTES - ctx->h.bCnt);

	/* process the final block */
	FUNC0(ctx, ctx->b, 1, ctx->h.bCnt);

	/* now output the result */
	/* total number of output bytes */
	byteCnt = (ctx->h.hashBitLen + 7) >> 3;

	/* run Threefish in "counter mode" to generate output */
	/* zero out b[], so it can hold the counter */
	FUNC7(ctx->b, sizeof (ctx->b));
	/* keep a local copy of counter mode "key" */
	FUNC6(ctx->X, X, sizeof (X));
	for (i = 0; i * SKEIN1024_BLOCK_BYTES < byteCnt; i++) {
		/* build the counter block */
		uint64_t tmp = FUNC5((uint64_t)i);
		FUNC6(&tmp, ctx->b, sizeof (tmp));
		FUNC4(ctx, OUT_FINAL);
		/* run "counter mode" */
		FUNC0(ctx, ctx->b, 1, sizeof (uint64_t));
		/* number of output bytes left to go */
		n = byteCnt - i * SKEIN1024_BLOCK_BYTES;
		if (n >= SKEIN1024_BLOCK_BYTES)
			n = SKEIN1024_BLOCK_BYTES;
		FUNC2(hashVal + i * SKEIN1024_BLOCK_BYTES,
		    ctx->X, n);	/* "output" the ctr mode bytes */
		FUNC3(1024, &ctx->h, n,
		    hashVal + i * SKEIN1024_BLOCK_BYTES);
		/* restore the counter mode key for next time */
		FUNC6(X, ctx->X, sizeof (X));
	}
	return (SKEIN_SUCCESS);
}