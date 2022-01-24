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
struct TYPE_7__ {int flags; int style; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  selection_end; int /*<<< orphan*/  line_height; int /*<<< orphan*/  selection_start; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int EF_AFTER_WRAP ; 
 int EF_FOCUSED ; 
 int /*<<< orphan*/  EN_SETFOCUS ; 
 int ES_MULTILINE ; 
 int ES_NOHIDESEL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(EDITSTATE *es)
{
	es->flags |= EF_FOCUSED;

        if (!(es->style & ES_NOHIDESEL))
            FUNC1(es, es->selection_start, es->selection_end);

        /* single line edit updates itself */
        if (FUNC6(es->hwndSelf) && !(es->style & ES_MULTILINE))
        {
            HDC hdc = FUNC5(es->hwndSelf);
            FUNC4(es, hdc);
            FUNC7(es->hwndSelf, hdc);
        }

	FUNC0(es->hwndSelf, 0, 1, es->line_height);
	FUNC3(es, es->selection_end,
			 es->flags & EF_AFTER_WRAP);
	FUNC8(es->hwndSelf);
	FUNC2(es, EN_SETFOCUS);
}