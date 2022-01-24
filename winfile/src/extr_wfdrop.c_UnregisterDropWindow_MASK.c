#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct IUnknown {int dummy; } ;
struct TYPE_6__ {TYPE_1__* lpVtbl; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* Release ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ IDropTarget ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct IUnknown*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(HWND hwnd, IDropTarget *pDropTarget)
{
	// remove drag+drop
	FUNC1(hwnd);

	// remove the strong lock
	FUNC0((struct IUnknown*)pDropTarget, FALSE, TRUE);

	// release our own reference
	pDropTarget->lpVtbl->Release(pDropTarget);
}