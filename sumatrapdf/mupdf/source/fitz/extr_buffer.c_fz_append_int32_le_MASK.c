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
typedef  int x ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC1(fz_context *ctx, fz_buffer *buf, int x)
{
	FUNC0(ctx, buf, (x)&0xFF);
	FUNC0(ctx, buf, (x>>8)&0xFF);
	FUNC0(ctx, buf, (x>>16)&0xFF);
	FUNC0(ctx, buf, (x>>24)&0xFF);
}