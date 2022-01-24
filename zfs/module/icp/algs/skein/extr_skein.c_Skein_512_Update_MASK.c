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
struct TYPE_5__ {size_t bCnt; } ;
struct TYPE_6__ {TYPE_1__ h; int /*<<< orphan*/  const* b; } ;
typedef  TYPE_2__ Skein_512_Ctxt_t ;

/* Variables and functions */
 size_t SKEIN_512_BLOCK_BYTES ; 
 int /*<<< orphan*/  SKEIN_FAIL ; 
 int SKEIN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

int
FUNC4(Skein_512_Ctxt_t *ctx, const uint8_t *msg, size_t msgByteCnt)
{
	size_t n;

	/* catch uninitialized context */
	FUNC1(ctx->h.bCnt <= SKEIN_512_BLOCK_BYTES, SKEIN_FAIL);

	/* process full blocks, if any */
	if (msgByteCnt + ctx->h.bCnt > SKEIN_512_BLOCK_BYTES) {
		/* finish up any buffered message data */
		if (ctx->h.bCnt) {
			/* # bytes free in buffer b[] */
			n = SKEIN_512_BLOCK_BYTES - ctx->h.bCnt;
			if (n) {
				/* check on our logic here */
				FUNC2(n < msgByteCnt);
				FUNC3(msg, &ctx->b[ctx->h.bCnt], n);
				msgByteCnt -= n;
				msg += n;
				ctx->h.bCnt += n;
			}
			FUNC2(ctx->h.bCnt == SKEIN_512_BLOCK_BYTES);
			FUNC0(ctx, ctx->b, 1,
			    SKEIN_512_BLOCK_BYTES);
			ctx->h.bCnt = 0;
		}
		/*
		 * now process any remaining full blocks, directly from input
		 * message data
		 */
		if (msgByteCnt > SKEIN_512_BLOCK_BYTES) {
			/* number of full blocks to process */
			n = (msgByteCnt - 1) / SKEIN_512_BLOCK_BYTES;
			FUNC0(ctx, msg, n,
			    SKEIN_512_BLOCK_BYTES);
			msgByteCnt -= n * SKEIN_512_BLOCK_BYTES;
			msg += n * SKEIN_512_BLOCK_BYTES;
		}
		FUNC2(ctx->h.bCnt == 0);
	}

	/* copy any remaining source message data bytes into b[] */
	if (msgByteCnt) {
		FUNC2(msgByteCnt + ctx->h.bCnt <= SKEIN_512_BLOCK_BYTES);
		FUNC3(msg, &ctx->b[ctx->h.bCnt], msgByteCnt);
		ctx->h.bCnt += msgByteCnt;
	}

	return (SKEIN_SUCCESS);
}