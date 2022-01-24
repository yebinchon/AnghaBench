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
struct TYPE_2__ {int fMask; int cx; int cxMinChild; int cyMinChild; int /*<<< orphan*/ * hwndChild; int /*<<< orphan*/  cbSize; } ;
typedef  TYPE_1__ REBARBANDINFOA ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int RBBIM_CHILD ; 
 int RBBIM_CHILDSIZE ; 
 int RBBIM_SIZE ; 
 int /*<<< orphan*/  RB_INSERTBANDA ; 
 int /*<<< orphan*/  RB_SHOWBAND ; 
 int /*<<< orphan*/  REBARBANDINFOA_V6_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    HWND hRebar;
    REBARBANDINFOA rbi;
    BOOL ret;

    hRebar = FUNC2();

    /* no bands */
    ret = FUNC1(hRebar, RB_SHOWBAND, 0, TRUE);
    FUNC3(ret == FALSE, "got %d\n", ret);

    rbi.cbSize = REBARBANDINFOA_V6_SIZE;
    rbi.fMask = RBBIM_SIZE | RBBIM_CHILDSIZE | RBBIM_CHILD;
    rbi.cx = 200;
    rbi.cxMinChild = 100;
    rbi.cyMinChild = 30;
    rbi.hwndChild = NULL;
    FUNC1(hRebar, RB_INSERTBANDA, -1, (LPARAM)&rbi);

    /* index out of range */
    ret = FUNC1(hRebar, RB_SHOWBAND, 1, TRUE);
    FUNC3(ret == FALSE, "got %d\n", ret);

    ret = FUNC1(hRebar, RB_SHOWBAND, 0, TRUE);
    FUNC3(ret == TRUE, "got %d\n", ret);

    FUNC0(hRebar);
}