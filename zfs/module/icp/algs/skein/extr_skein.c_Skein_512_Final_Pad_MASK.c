#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {size_t bCnt; int /*<<< orphan*/ * T; } ;
struct TYPE_6__ {int /*<<< orphan*/  X; TYPE_1__ h; int /*<<< orphan*/ * b; } ;
typedef  TYPE_2__ Skein_512_Ctxt_t ;

/* Variables and functions */
 size_t SKEIN_512_BLOCK_BYTES ; 
 int /*<<< orphan*/  SKEIN_FAIL ; 
 int SKEIN_SUCCESS ; 
 int /*<<< orphan*/  SKEIN_T1_FLAG_FINAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC4(Skein_512_Ctxt_t *ctx, uint8_t *hashVal)
{
	/* catch uninitialized context */
	FUNC1(ctx->h.bCnt <= SKEIN_512_BLOCK_BYTES, SKEIN_FAIL);

	ctx->h.T[1] |= SKEIN_T1_FLAG_FINAL;	/* tag as the final block */
	/* zero pad b[] if necessary */
	if (ctx->h.bCnt < SKEIN_512_BLOCK_BYTES)
		FUNC3(&ctx->b[ctx->h.bCnt],
		    SKEIN_512_BLOCK_BYTES - ctx->h.bCnt);
	/* process the final block */
	FUNC0(ctx, ctx->b, 1, ctx->h.bCnt);

	/* "output" the state bytes */
	FUNC2(hashVal, ctx->X, SKEIN_512_BLOCK_BYTES);

	return (SKEIN_SUCCESS);
}