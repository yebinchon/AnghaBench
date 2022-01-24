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
struct TYPE_5__ {int wDevID; } ;
typedef  TYPE_1__ WINE_MCIMIDI ;
struct TYPE_6__ {int wDeviceID; int /*<<< orphan*/  wType; int /*<<< orphan*/  wCustomCommandTable; } ;
typedef  TYPE_2__* LPMCI_OPEN_DRIVER_PARMSW ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MCI_DEVTYPE_SEQUENCER ; 
 int /*<<< orphan*/  MCI_NO_COMMAND_TABLE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	DWORD	FUNC3(LPCWSTR str, LPMCI_OPEN_DRIVER_PARMSW modp)
{
    WINE_MCIMIDI*	wmm;

    if (!modp) return 0xFFFFFFFF;

    wmm = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(WINE_MCIMIDI));

    if (!wmm)
	return 0;

    wmm->wDevID = modp->wDeviceID;
    FUNC2(wmm->wDevID, (DWORD_PTR)wmm);
    modp->wCustomCommandTable = MCI_NO_COMMAND_TABLE;
    modp->wType = MCI_DEVTYPE_SEQUENCER;
    return modp->wDeviceID;
}