
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nMapper; size_t wMaxId; TYPE_1__* lpMlds; scalar_t__ bSupportMapper; } ;
typedef TYPE_2__ WINE_LLTYPE ;
typedef size_t UINT16 ;
typedef size_t UINT ;
struct TYPE_9__ {size_t type; size_t uDeviceID; void* dwDriverInstance; int mmdIndex; } ;
struct TYPE_7__ {int mmdIndex; } ;
typedef TYPE_3__* LPWINE_MLD ;
typedef void* DWORD_PTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ MMDRV_Message (TYPE_3__*,size_t,void*,scalar_t__) ;
 scalar_t__ MMSYSERR_BADDEVICEID ;
 scalar_t__ MMSYSERR_NOERROR ;
 int TRACE (char*,...) ;
 TYPE_2__* llTypes ;

DWORD MMDRV_Open(LPWINE_MLD mld, UINT wMsg, DWORD_PTR dwParam1, DWORD dwFlags)
{
    DWORD dwRet = MMSYSERR_BADDEVICEID;
    DWORD_PTR dwInstance;
    WINE_LLTYPE* llType = &llTypes[mld->type];
    TRACE("(%p, %04x, 0x%08lx, 0x%08x)\n", mld, wMsg, dwParam1, dwFlags);

    mld->dwDriverInstance = (DWORD_PTR)&dwInstance;

    if (mld->uDeviceID == (UINT)-1 || mld->uDeviceID == (UINT16)-1) {
 TRACE("MAPPER mode requested !\n");

 if (llType->bSupportMapper) {
     if (llType->nMapper == -1) {

  TRACE("No mapper loaded, doing it by hand\n");
  for (mld->uDeviceID = 0; mld->uDeviceID < llType->wMaxId; mld->uDeviceID++) {
      if ((dwRet = MMDRV_Open(mld, wMsg, dwParam1, dwFlags)) == MMSYSERR_NOERROR) {

   dwInstance = mld->dwDriverInstance;
   break;
      }
  }
     } else {
  mld->uDeviceID = (UINT16)-1;
  mld->mmdIndex = llType->lpMlds[-1].mmdIndex;
  TRACE("Setting mmdIndex to %u\n", mld->mmdIndex);
  dwRet = MMDRV_Message(mld, wMsg, dwParam1, dwFlags);
     }
 }
    } else {
 if (mld->uDeviceID < llType->wMaxId) {
     mld->mmdIndex = llType->lpMlds[mld->uDeviceID].mmdIndex;
     TRACE("Setting mmdIndex to %u\n", mld->mmdIndex);
     dwRet = MMDRV_Message(mld, wMsg, dwParam1, dwFlags);
 }
    }
    if (dwRet == MMSYSERR_NOERROR)
 mld->dwDriverInstance = dwInstance;
    return dwRet;
}
