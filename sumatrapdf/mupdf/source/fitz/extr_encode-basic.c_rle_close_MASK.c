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
struct rle {int state; int /*<<< orphan*/  chain; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  DIFF 131 
#define  ONE 130 
#define  SAME 129 
#define  ZERO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rle*) ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, void *opaque)
{
	struct rle *enc = opaque;
	switch (enc->state)
	{
		case ZERO: break;
		case ONE: FUNC1(ctx, enc); break;
		case DIFF: FUNC1(ctx, enc); break;
		case SAME: FUNC2(ctx, enc); break;
	}
	FUNC0(ctx, enc->chain, 128);
}