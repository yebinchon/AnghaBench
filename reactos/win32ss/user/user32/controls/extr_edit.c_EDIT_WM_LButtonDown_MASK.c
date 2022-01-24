#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; int /*<<< orphan*/  hwndSelf; scalar_t__ region_posy; scalar_t__ region_posx; int /*<<< orphan*/  selection_start; int /*<<< orphan*/  bCaptureState; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  INT ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EF_FOCUSED ; 
 int MK_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC7(EDITSTATE *es, DWORD keys, INT x, INT y)
{
	INT e;
	BOOL after_wrap;

	es->bCaptureState = TRUE;
	FUNC4(es->hwndSelf);
	FUNC1(es, &x, &y);
	e = FUNC0(es, x, y, &after_wrap);
	FUNC3(es, (keys & MK_SHIFT) ? es->selection_start : e, e, after_wrap);
	FUNC2(es);
	es->region_posx = es->region_posy = 0;
	FUNC6(es->hwndSelf, 0, 100, NULL);

	if (!(es->flags & EF_FOCUSED))
            FUNC5(es->hwndSelf);

	return 0;
}