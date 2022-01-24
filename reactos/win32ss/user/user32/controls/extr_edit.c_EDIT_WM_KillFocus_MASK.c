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
struct TYPE_5__ {int style; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/ * hwndListBox; scalar_t__ wheelDeltaRemainder; int /*<<< orphan*/  selection_end; int /*<<< orphan*/  selection_start; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int CBS_DROPDOWN ; 
 int CBS_SIMPLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EF_FOCUSED ; 
 int /*<<< orphan*/  EN_KILLFOCUS ; 
 int ES_NOHIDESEL ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_CBLOSTTEXTFOCUS ; 

__attribute__((used)) static LRESULT FUNC6(EDITSTATE *es)
{
	HWND hCombo;
	LONG lStyles;

	es->flags &= ~EF_FOCUSED;
	FUNC0();
	if(!(es->style & ES_NOHIDESEL))
		FUNC1(es, es->selection_start, es->selection_end);

	/* throw away left over scroll when we lose focus */
	es->wheelDeltaRemainder = 0;

	if (es->hwndListBox == NULL)
		FUNC2(es, EN_KILLFOCUS);
	else
	{ /* send the undocumented WM_CBLOSTTEXTFOCUS message to combobox */
		hCombo = FUNC3(es->hwndSelf);
		lStyles = FUNC4(hCombo, GWL_STYLE);
		if ((lStyles & CBS_DROPDOWN) || (lStyles & CBS_SIMPLE))
			FUNC5(hCombo, WM_CBLOSTTEXTFOCUS, 0, 0);
	}

	return 0;
}