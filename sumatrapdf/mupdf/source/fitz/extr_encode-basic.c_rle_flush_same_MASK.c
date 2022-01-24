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
struct rle {scalar_t__* buf; int /*<<< orphan*/  chain; scalar_t__ run; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(fz_context *ctx, struct rle *enc)
{
	FUNC0(ctx, enc->chain, 257 - enc->run);
	FUNC0(ctx, enc->chain, enc->buf[0]);
}