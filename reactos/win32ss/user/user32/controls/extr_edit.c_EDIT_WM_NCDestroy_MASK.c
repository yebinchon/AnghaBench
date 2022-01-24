#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ hloc32W; scalar_t__ hlocapp; scalar_t__ hloc32A; struct TYPE_6__* undo_text; int /*<<< orphan*/  hwndSelf; struct TYPE_6__* next; struct TYPE_6__* first_line_def; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ LINEDEF ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC5(EDITSTATE *es)
{
	LINEDEF *pc, *pp;

        /* The app can own the text buffer handle */
        if (es->hloc32W && (es->hloc32W != es->hlocapp)) {
		FUNC3(es->hloc32W);
	}
        if (es->hloc32A && (es->hloc32A != es->hlocapp)) {
		FUNC3(es->hloc32A);
	}
	FUNC0(es);
	pc = es->first_line_def;
	while (pc)
	{
		pp = pc->next;
		FUNC2(FUNC1(), 0, pc);
		pc = pp;
	}

	FUNC4( es->hwndSelf, 0, 0 );
	FUNC2(FUNC1(), 0, es->undo_text);
	FUNC2(FUNC1(), 0, es);

	return 0;
}