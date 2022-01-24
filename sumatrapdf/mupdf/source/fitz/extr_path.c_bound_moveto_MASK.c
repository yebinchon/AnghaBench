#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_2__ {int trailing_move; int /*<<< orphan*/  ctm; int /*<<< orphan*/  move; } ;
typedef  TYPE_1__ bound_path_arg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, void *arg_, float x, float y)
{
	bound_path_arg *arg = (bound_path_arg *)arg_;
	arg->move = FUNC0(x, y, arg->ctm);
	arg->trailing_move = 1;
}