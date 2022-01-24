#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct IUnknown {int dummy; } ;
typedef  int /*<<< orphan*/  WF_IDropTarget ;
typedef  int /*<<< orphan*/  LPDROPTARGET ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct IUnknown*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

void FUNC3(HWND hwnd, WF_IDropTarget **ppDropTarget)
{
	WF_IDropTarget *pDropTarget;
	
	FUNC1(hwnd, &pDropTarget);

	// acquire a strong lock
	FUNC0((struct IUnknown*)pDropTarget, TRUE, FALSE);

	// tell OLE that the window is a drop target
	FUNC2(hwnd, (LPDROPTARGET)pDropTarget);

	*ppDropTarget = pDropTarget;
}