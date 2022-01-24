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
struct TYPE_2__ {int /*<<< orphan*/  hBrowseDlg; } ;
typedef  TYPE_1__* PMAIN_WND_INFO ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC1(HWND hDlg,
                   LPARAM lParam)
{
    PMAIN_WND_INFO pInfo;

    pInfo = (PMAIN_WND_INFO)lParam;

    pInfo->hBrowseDlg = hDlg;

    FUNC0(hDlg,
                     GWLP_USERDATA,
                     (LONG_PTR)pInfo);

    return TRUE;
}