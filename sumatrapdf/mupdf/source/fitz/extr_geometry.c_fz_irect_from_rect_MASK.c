#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  x1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x0; } ;
typedef  TYPE_1__ fz_rect ;
struct TYPE_7__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_2__ fz_irect ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SAFE_INT ; 
 int /*<<< orphan*/  MIN_SAFE_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__) ; 

fz_irect
FUNC4(fz_rect r)
{
	fz_irect b;
	if (FUNC3(r))
	{
		b.x0 = 0;
		b.y0 = 0;
		b.x1 = 0;
		b.y1 = 0;
	}
	else
	{
		b.x0 = FUNC2(FUNC1(r.x0), MIN_SAFE_INT, MAX_SAFE_INT);
		b.y0 = FUNC2(FUNC1(r.y0), MIN_SAFE_INT, MAX_SAFE_INT);
		b.x1 = FUNC2(FUNC0(r.x1), MIN_SAFE_INT, MAX_SAFE_INT);
		b.y1 = FUNC2(FUNC0(r.y1), MIN_SAFE_INT, MAX_SAFE_INT);
	}
	return b;
}