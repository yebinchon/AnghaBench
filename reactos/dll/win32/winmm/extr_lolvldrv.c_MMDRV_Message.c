
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nIDMin; int nIDMax; int (* fnMessage32 ) (int,int ,int ,int ,int ) ;} ;
typedef TYPE_1__ WINE_MM_DRIVER_PART ;
struct TYPE_9__ {int wMaxId; int typestr; int bSupportMapper; } ;
typedef TYPE_2__ WINE_LLTYPE ;
typedef int UINT16 ;
typedef int UINT ;
struct TYPE_11__ {size_t type; int uDeviceID; size_t mmdIndex; int dwDriverInstance; } ;
struct TYPE_10__ {TYPE_1__* parts; } ;
typedef TYPE_3__* LPWINE_MM_DRIVER ;
typedef TYPE_4__* LPWINE_MLD ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int ERR (char*,int,int) ;
 TYPE_3__* MMDrvs ;
 int MMSYSERR_BADDEVICEID ;
 int TRACE (char*,int,...) ;
 int WARN (char*,int,...) ;
 int WINMM_ErrorToString (int ) ;
 int assert (int (*) (int,int ,int ,int ,int )) ;
 TYPE_2__* llTypes ;
 int stub1 (int,int ,int ,int ,int ) ;

DWORD MMDRV_Message(LPWINE_MLD mld, UINT wMsg, DWORD_PTR dwParam1,
                     DWORD_PTR dwParam2)
{
    LPWINE_MM_DRIVER lpDrv;
    DWORD ret;
    WINE_MM_DRIVER_PART* part;
    WINE_LLTYPE* llType = &llTypes[mld->type];
    int devID;

    TRACE("(%s %u %u 0x%08lx 0x%08lx 0x%08lx)\n",
   llTypes[mld->type].typestr, mld->uDeviceID, wMsg,
   mld->dwDriverInstance, dwParam1, dwParam2);

    if (mld->uDeviceID == (UINT16)-1) {
 if (!llType->bSupportMapper) {
     WARN("uDev=-1 requested on non-mappable ll type %s\n",
   llTypes[mld->type].typestr);
     return MMSYSERR_BADDEVICEID;
 }
 devID = -1;
    } else {
 if (mld->uDeviceID >= llType->wMaxId) {
     WARN("uDev(%u) requested >= max (%d)\n", mld->uDeviceID, llType->wMaxId);
     return MMSYSERR_BADDEVICEID;
 }
 devID = mld->uDeviceID;
    }

    lpDrv = &MMDrvs[mld->mmdIndex];
    part = &lpDrv->parts[mld->type];
    assert(part->fnMessage32);

    TRACE("Calling message(dev=%u msg=%u usr=0x%08lx p1=0x%08lx p2=0x%08lx)\n",
          mld->uDeviceID, wMsg, mld->dwDriverInstance, dwParam1, dwParam2);
    ret = part->fnMessage32(mld->uDeviceID, wMsg, mld->dwDriverInstance, dwParam1, dwParam2);
    TRACE("=> %s\n", WINMM_ErrorToString(ret));

    return ret;
}
