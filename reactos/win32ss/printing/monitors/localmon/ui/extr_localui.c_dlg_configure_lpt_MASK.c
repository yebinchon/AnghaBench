#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  hXcv; } ;
typedef  TYPE_1__ lptconfig_t ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_CANCELLED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOCALUI_hInstance ; 
 int /*<<< orphan*/  LPTCONFIG_DIALOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dlgproc_lptconfig ; 

__attribute__((used)) static BOOL FUNC5(HANDLE hXcv, HWND hWnd)
{
    lptconfig_t data;
    BOOL  res;


    data.hXcv = hXcv;

    res = FUNC0(LOCALUI_hInstance, FUNC2(LPTCONFIG_DIALOG), hWnd,
                               dlgproc_lptconfig, (LPARAM) &data);

    FUNC4("got %u with %u\n", res, FUNC1());

    if (!res) FUNC3(ERROR_CANCELLED);
    return res;
}