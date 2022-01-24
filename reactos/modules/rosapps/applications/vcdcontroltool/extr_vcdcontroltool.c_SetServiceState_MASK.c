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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_DRIVERSTART ; 
 int /*<<< orphan*/  IDC_DRIVERSTOP ; 
 int /*<<< orphan*/  hDriverWnd ; 

VOID
FUNC2(BOOLEAN Started)
{
    HWND hControl;

    /* If started, disable start button */
    hControl = FUNC1(hDriverWnd, IDC_DRIVERSTART);
    FUNC0(hControl, !Started);

    /* If started, enable stop button */
    hControl = FUNC1(hDriverWnd, IDC_DRIVERSTOP);
    FUNC0(hControl, Started);
}