#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ fz_point ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x1; int /*<<< orphan*/  x0; } ;
struct TYPE_7__ {TYPE_1__ move; TYPE_4__ rect; scalar_t__ trailing_move; scalar_t__ first; int /*<<< orphan*/  ctm; } ;
typedef  TYPE_2__ bound_path_arg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_1__) ; 
 TYPE_1__ FUNC1 (float,float,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, void *arg_, float x, float y)
{
	bound_path_arg *arg = (bound_path_arg *)arg_;
	fz_point p = FUNC1(x, y, arg->ctm);
	if (arg->first)
	{
		arg->rect.x0 = arg->rect.x1 = p.x;
		arg->rect.y0 = arg->rect.y1 = p.y;
		arg->first = 0;
	}
	else
		FUNC0(&arg->rect, p);
	if (arg->trailing_move)
	{
		arg->trailing_move = 0;
		FUNC0(&arg->rect, arg->move);
	}
}