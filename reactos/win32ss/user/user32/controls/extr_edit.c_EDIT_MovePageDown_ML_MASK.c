#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {short bottom; short top; } ;
struct TYPE_9__ {short selection_start; short selection_end; int flags; TYPE_1__ format_rect; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  short INT ;
typedef  TYPE_2__ EDITSTATE ;
typedef  int BOOL ;

/* Variables and functions */
 short FUNC0 (TYPE_2__*,short,short,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,short,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,short,short,int) ; 
 int EF_AFTER_WRAP ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(EDITSTATE *es, BOOL extend)
{
	INT s = es->selection_start;
	INT e = es->selection_end;
	BOOL after_wrap = (es->flags & EF_AFTER_WRAP);
	LRESULT pos = FUNC1(es, e, after_wrap);
	INT x = (short)FUNC5(pos);
	INT y = (short)FUNC4(pos);

	e = FUNC0(es, x,
		y + (es->format_rect.bottom - es->format_rect.top),
		&after_wrap);
	if (!extend)
		s = e;
	FUNC3(es, s, e, after_wrap);
	FUNC2(es);
}