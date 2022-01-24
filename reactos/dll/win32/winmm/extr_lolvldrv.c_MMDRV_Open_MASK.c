#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nMapper; size_t wMaxId; TYPE_1__* lpMlds; scalar_t__ bSupportMapper; } ;
typedef  TYPE_2__ WINE_LLTYPE ;
typedef  size_t UINT16 ;
typedef  size_t UINT ;
struct TYPE_9__ {size_t type; size_t uDeviceID; void* dwDriverInstance; int /*<<< orphan*/  mmdIndex; } ;
struct TYPE_7__ {int /*<<< orphan*/  mmdIndex; } ;
typedef  TYPE_3__* LPWINE_MLD ;
typedef  void* DWORD_PTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,size_t,void*,scalar_t__) ; 
 scalar_t__ MMSYSERR_BADDEVICEID ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_2__* llTypes ; 

DWORD FUNC2(LPWINE_MLD mld, UINT wMsg, DWORD_PTR dwParam1, DWORD dwFlags)
{
    DWORD		dwRet = MMSYSERR_BADDEVICEID;
    DWORD_PTR		dwInstance;
    WINE_LLTYPE*	llType = &llTypes[mld->type];
    FUNC1("(%p, %04x, 0x%08lx, 0x%08x)\n", mld, wMsg, dwParam1, dwFlags);

    mld->dwDriverInstance = (DWORD_PTR)&dwInstance;

    if (mld->uDeviceID == (UINT)-1 || mld->uDeviceID == (UINT16)-1) {
	FUNC1("MAPPER mode requested !\n");
	/* check if mapper is supported by type */
	if (llType->bSupportMapper) {
	    if (llType->nMapper == -1) {
		/* no driver for mapper has been loaded, try a dumb implementation */
		FUNC1("No mapper loaded, doing it by hand\n");
		for (mld->uDeviceID = 0; mld->uDeviceID < llType->wMaxId; mld->uDeviceID++) {
		    if ((dwRet = FUNC2(mld, wMsg, dwParam1, dwFlags)) == MMSYSERR_NOERROR) {
			/* to share this function epilog */
			dwInstance = mld->dwDriverInstance;
			break;
		    }
		}
	    } else {
		mld->uDeviceID = (UINT16)-1;
		mld->mmdIndex = llType->lpMlds[-1].mmdIndex;
		FUNC1("Setting mmdIndex to %u\n", mld->mmdIndex);
		dwRet = FUNC0(mld, wMsg, dwParam1, dwFlags);
	    }
	}
    } else {
	if (mld->uDeviceID < llType->wMaxId) {
	    mld->mmdIndex = llType->lpMlds[mld->uDeviceID].mmdIndex;
	    FUNC1("Setting mmdIndex to %u\n", mld->mmdIndex);
	    dwRet = FUNC0(mld, wMsg, dwParam1, dwFlags);
	}
    }
    if (dwRet == MMSYSERR_NOERROR)
	mld->dwDriverInstance = dwInstance;
    return dwRet;
}