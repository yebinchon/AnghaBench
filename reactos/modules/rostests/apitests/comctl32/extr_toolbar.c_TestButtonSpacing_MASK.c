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
typedef  int /*<<< orphan*/  metrics ;
struct TYPE_3__ {int dwMask; int cxPad; int cbSize; int cyPad; int cxButtonSpacing; int cyButtonSpacing; } ;
typedef  TYPE_1__ TBMETRICS ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TBMF_BARPAD ; 
 int TBMF_BUTTONSPACING ; 
 int TBMF_PAD ; 
 int /*<<< orphan*/  TB_GETMETRICS ; 
 int /*<<< orphan*/  TOOLBARCLASSNAMEW ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

void FUNC4()
{
    HWND hwnd;
    TBMETRICS metrics;
    LRESULT lres;

    hwnd = FUNC0(0, TOOLBARCLASSNAMEW, L"Test", 0, 0, 0, 0, 0, 0, 0, 0, NULL);
    FUNC3(hwnd != NULL, "CreateWindowEx failed\n");

    FUNC2(&metrics, 0, sizeof(metrics));
    lres = FUNC1(hwnd, TB_GETMETRICS, 0, (LPARAM)&metrics);
    FUNC3 (lres == 0, "Got %d result\n", (int)lres);
    FUNC3 (metrics.dwMask == 0, "Got %lu\n", metrics.dwMask);
    FUNC3 (metrics.cxPad == 0, "Got %d\n", metrics.cxPad);

    metrics.cbSize = sizeof(metrics);
    metrics.dwMask = TBMF_PAD|TBMF_BARPAD|TBMF_BUTTONSPACING;
    lres = FUNC1(hwnd, TB_GETMETRICS, 0, (LPARAM)&metrics);
    FUNC3 (lres == 0, "Got %lu result\n", lres);
    FUNC3 (metrics.dwMask == (TBMF_PAD|TBMF_BARPAD|TBMF_BUTTONSPACING), "Got %lu\n", metrics.dwMask);
    FUNC3 (metrics.cxPad == 7, "Got %d\n", metrics.cxPad);
    FUNC3 (metrics.cyPad == 6, "Got %d\n", metrics.cyPad);
    FUNC3 (metrics.cxButtonSpacing == 0, "Got %d\n", metrics.cxButtonSpacing);
    FUNC3 (metrics.cyButtonSpacing == 0, "Got %d\n", metrics.cyButtonSpacing);
}