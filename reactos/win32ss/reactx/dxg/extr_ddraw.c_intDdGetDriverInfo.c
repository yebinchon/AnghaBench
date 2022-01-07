
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {int dwFlags; scalar_t__ (* GetDriverInfo ) (TYPE_2__*) ;} ;
struct TYPE_11__ {TYPE_1__ ddHalInfo; int dhpdev; } ;
struct TYPE_10__ {int dwSize; int dwExpectedSize; int dwActualSize; int ddRVal; struct TYPE_10__* lpvData; int guidInfo; int dhpdev; } ;
typedef TYPE_2__* PVOID ;
typedef TYPE_3__* PEDD_DIRECTDRAW_GLOBAL ;
typedef int GUID ;
typedef TYPE_2__ DD_GETDRIVERINFODATA ;
typedef int BOOL ;


 int DDERR_CURRENTLYNOTAVAIL ;
 int DDHALINFO_GETDRIVERINFOSET ;
 int FALSE ;
 int TRUE ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ stub1 (TYPE_2__*) ;

BOOL intDdGetDriverInfo(PEDD_DIRECTDRAW_GLOBAL peDdGl, GUID guid, PVOID callbackStruct, ULONG callbackSize, ULONG *returnSize)
{
    DD_GETDRIVERINFODATA ddGetDriverInfoData;

    if (peDdGl->ddHalInfo.dwFlags & DDHALINFO_GETDRIVERINFOSET && peDdGl->ddHalInfo.GetDriverInfo)
    {
        memset(&ddGetDriverInfoData, 0, sizeof(DD_GETDRIVERINFODATA));
        ddGetDriverInfoData.dwSize = sizeof(DD_GETDRIVERINFODATA);
        ddGetDriverInfoData.dhpdev = peDdGl->dhpdev;
        memcpy(&ddGetDriverInfoData.guidInfo, &guid, sizeof(GUID));
        ddGetDriverInfoData.dwExpectedSize = callbackSize;
        ddGetDriverInfoData.lpvData = callbackStruct;
        ddGetDriverInfoData.ddRVal = DDERR_CURRENTLYNOTAVAIL;
        if (peDdGl->ddHalInfo.GetDriverInfo(&ddGetDriverInfoData) && !ddGetDriverInfoData.ddRVal)
        {
            if (returnSize)
                *returnSize = ddGetDriverInfoData.dwActualSize;
            return TRUE;
        }

    }


    memset(callbackStruct, 0, callbackSize);
    if (returnSize)
        *returnSize = 0;
    return FALSE;
}
