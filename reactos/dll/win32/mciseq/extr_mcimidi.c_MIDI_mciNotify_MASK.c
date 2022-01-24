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
struct TYPE_3__ {int /*<<< orphan*/  hCallback; int /*<<< orphan*/  wDevID; } ;
typedef  TYPE_1__ WINE_MCIMIDI ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MCIDEVICEID ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD_PTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUPERSEDED ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(DWORD_PTR hWndCallBack, WINE_MCIMIDI* wmm, UINT wStatus)
{
    /* We simply save one parameter by not passing the wDevID local
     * to the command.  They are the same (via mciGetDriverData).
     */
    MCIDEVICEID wDevID = wmm->wDevID;
    HANDLE old = FUNC1(&wmm->hCallback, NULL);
    if (old) FUNC3(old, wDevID, MCI_NOTIFY_SUPERSEDED);
    FUNC3(FUNC0(FUNC2(hWndCallBack)), wDevID, wStatus);
}