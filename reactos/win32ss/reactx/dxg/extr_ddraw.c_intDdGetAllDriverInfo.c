
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int dwFlags; scalar_t__ GetDriverInfo; } ;
struct TYPE_6__ {int dwCallbackFlags; int ddMotionCompCallbacks; int ddNtPrivateDriverCaps; int ddMoreCaps; int ddNtCallbacks; int ddMiscellanous2Callbacks; int ddMiscellanousCallbacks; int ddColorControlCallbacks; int d3dNtHalCallbacks3; int ddKernelCallbacks; int ddKernelCaps; TYPE_1__ ddHalInfo; } ;
typedef TYPE_2__* PEDD_DIRECTDRAW_GLOBAL ;


 int DDHALINFO_GETDRIVERINFOSET ;
 int EDDDGBL_COLORCONTROLCALLBACKS ;
 int EDDDGBL_D3DCALLBACKS3 ;
 int EDDDGBL_DDMORECAPS ;
 int EDDDGBL_MISC2CALLBACKS ;
 int EDDDGBL_MISCCALLBACKS ;
 int EDDDGBL_MOTIONCOMPCALLBACKS ;
 int EDDDGBL_NTCALLBACKS ;
 int EDDDGBL_PRIVATEDRIVERCAPS ;
 int GUID_ColorControlCallbacks ;
 int GUID_D3DCallbacks3 ;
 int GUID_DDMoreCaps ;
 int GUID_KernelCallbacks ;
 int GUID_KernelCaps ;
 int GUID_Miscellaneous2Callbacks ;
 int GUID_MiscellaneousCallbacks ;
 int GUID_MotionCompCallbacks ;
 int GUID_NTCallbacks ;
 int GUID_NTPrivateDriverCaps ;
 scalar_t__ intDdGetDriverInfo (TYPE_2__*,int ,int *,int,int ) ;

VOID intDdGetAllDriverInfo(PEDD_DIRECTDRAW_GLOBAL peDdGl)
{
    if (peDdGl->ddHalInfo.GetDriverInfo && peDdGl->ddHalInfo.dwFlags & DDHALINFO_GETDRIVERINFOSET)
    {
        intDdGetDriverInfo(peDdGl, GUID_KernelCaps, &peDdGl->ddKernelCaps, sizeof(peDdGl->ddKernelCaps), 0);
        intDdGetDriverInfo(peDdGl, GUID_KernelCallbacks, &peDdGl->ddKernelCallbacks, sizeof(peDdGl->ddKernelCallbacks), 0);

        if (intDdGetDriverInfo(peDdGl, GUID_D3DCallbacks3, &peDdGl->d3dNtHalCallbacks3, sizeof(peDdGl->d3dNtHalCallbacks3), 0))
            peDdGl->dwCallbackFlags |= EDDDGBL_D3DCALLBACKS3;

        if (intDdGetDriverInfo(peDdGl, GUID_ColorControlCallbacks, &peDdGl->ddColorControlCallbacks, sizeof(peDdGl->ddColorControlCallbacks), 0))
            peDdGl->dwCallbackFlags |= EDDDGBL_COLORCONTROLCALLBACKS;

        if (intDdGetDriverInfo(peDdGl, GUID_MiscellaneousCallbacks, &peDdGl->ddMiscellanousCallbacks, sizeof(peDdGl->ddMiscellanousCallbacks), 0))
            peDdGl->dwCallbackFlags |= EDDDGBL_MISCCALLBACKS;

        if (intDdGetDriverInfo(peDdGl, GUID_Miscellaneous2Callbacks, &peDdGl->ddMiscellanous2Callbacks, sizeof(peDdGl->ddMiscellanous2Callbacks), 0))
            peDdGl->dwCallbackFlags |= EDDDGBL_MISC2CALLBACKS;

        if (intDdGetDriverInfo(peDdGl, GUID_NTCallbacks, &peDdGl->ddNtCallbacks, sizeof(peDdGl->ddNtCallbacks), 0) )
            peDdGl->dwCallbackFlags |= EDDDGBL_NTCALLBACKS;

        if (intDdGetDriverInfo(peDdGl, GUID_DDMoreCaps, &peDdGl->ddMoreCaps, sizeof(peDdGl->ddMoreCaps), 0) )
            peDdGl->dwCallbackFlags |= EDDDGBL_DDMORECAPS;

        if (intDdGetDriverInfo(peDdGl, GUID_NTPrivateDriverCaps, &peDdGl->ddNtPrivateDriverCaps, sizeof(peDdGl->ddNtPrivateDriverCaps), 0) )
            peDdGl->dwCallbackFlags |= EDDDGBL_PRIVATEDRIVERCAPS;

        if (intDdGetDriverInfo(peDdGl, GUID_MotionCompCallbacks, &peDdGl->ddMotionCompCallbacks, sizeof(peDdGl->ddMotionCompCallbacks), 0) )
            peDdGl->dwCallbackFlags |= EDDDGBL_MOTIONCOMPCALLBACKS;
    }
}
