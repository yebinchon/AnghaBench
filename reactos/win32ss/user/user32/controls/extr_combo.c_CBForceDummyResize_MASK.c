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
struct TYPE_7__ {int /*<<< orphan*/  self; } ;
struct TYPE_6__ {scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__* LPHEADCOMBO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC4(
  LPHEADCOMBO lphc)
{
  RECT windowRect;
  int newComboHeight;

  newComboHeight = FUNC0(lphc->self,lphc) + 2*FUNC1();

  FUNC2(lphc->self, &windowRect);

  /*
   * We have to be careful, resizing a combobox also has the meaning that the
   * dropped rect will be resized. In this case, we want to trigger a resize
   * to recalculate layout but we don't want to change the dropped rectangle
   * So, we pass the height of text area of control as the height.
   * this will cancel-out in the processing of the WM_WINDOWPOSCHANGING
   * message.
   */
  FUNC3( lphc->self,
		NULL,
		0, 0,
		windowRect.right  - windowRect.left,
		newComboHeight,
		SWP_NOMOVE | SWP_NOZORDER | SWP_NOACTIVATE );
}