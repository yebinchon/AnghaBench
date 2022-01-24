#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_7__ {int /*<<< orphan*/  hMenuView; } ;
struct TYPE_6__ {int /*<<< orphan*/  hwnd; int /*<<< orphan*/  visible_cols; } ;
typedef  TYPE_1__ Pane ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_5__ Globals ; 
#define  ID_PREFERRED_SIZES 130 
#define  ID_VIEW_ALL_ATTRIBUTES 129 
#define  ID_VIEW_NAME 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MF_BYCOMMAND ; 
 int MF_CHECKED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static BOOL FUNC4(Pane* pane, UINT cmd)
{
	switch(cmd) {
		case ID_VIEW_NAME:
			if (pane->visible_cols) {
				pane->visible_cols = 0;
				FUNC2(pane, TRUE);
				FUNC3(pane);
				FUNC1(pane->hwnd, 0, TRUE);
				FUNC0(Globals.hMenuView, ID_VIEW_NAME, MF_BYCOMMAND|MF_CHECKED);
				FUNC0(Globals.hMenuView, ID_VIEW_ALL_ATTRIBUTES, MF_BYCOMMAND);
			}
			break;

		case ID_VIEW_ALL_ATTRIBUTES:
			if (pane->visible_cols != COL_ALL) {
				pane->visible_cols = COL_ALL;
				FUNC2(pane, TRUE);
				FUNC3(pane);
				FUNC1(pane->hwnd, 0, TRUE);
				FUNC0(Globals.hMenuView, ID_VIEW_NAME, MF_BYCOMMAND);
				FUNC0(Globals.hMenuView, ID_VIEW_ALL_ATTRIBUTES, MF_BYCOMMAND|MF_CHECKED);
			}
			break;

		case ID_PREFERRED_SIZES: {
			FUNC2(pane, TRUE);
			FUNC3(pane);
			FUNC1(pane->hwnd, 0, TRUE);
			break;}

		        /* TODO: more command ids... */

		default:
			return FALSE;
	}

	return TRUE;
}