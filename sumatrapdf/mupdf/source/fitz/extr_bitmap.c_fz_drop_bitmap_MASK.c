#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {struct TYPE_5__* samples; int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ fz_bitmap ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC2(fz_context *ctx, fz_bitmap *bit)
{
	if (FUNC0(ctx, bit, &bit->refs))
	{
		FUNC1(ctx, bit->samples);
		FUNC1(ctx, bit);
	}
}