#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_3__ {int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
#define  EM_SETSEL 133 
#define  EM_UNDO 132 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int) ; 
#define  WM_CLEAR 131 
#define  WM_COPY 130 
#define  WM_CUT 129 
#define  WM_PASTE 128 
 int const WM_UNDO ; 

__attribute__((used)) static void FUNC2(EDITSTATE *es, UINT id)
{
	switch (id) {
		case EM_UNDO:
                        FUNC1(es->hwndSelf, WM_UNDO, 0, 0);
			break;
		case WM_CUT:
                        FUNC1(es->hwndSelf, WM_CUT, 0, 0);
			break;
		case WM_COPY:
                        FUNC1(es->hwndSelf, WM_COPY, 0, 0);
			break;
		case WM_PASTE:
                        FUNC1(es->hwndSelf, WM_PASTE, 0, 0);
			break;
		case WM_CLEAR:
                        FUNC1(es->hwndSelf, WM_CLEAR, 0, 0);
			break;
		case EM_SETSEL:
                        FUNC1(es->hwndSelf, EM_SETSEL, 0, -1);
			break;
		default:
			FUNC0("unknown menu item, please report\n");
			break;
	}
}