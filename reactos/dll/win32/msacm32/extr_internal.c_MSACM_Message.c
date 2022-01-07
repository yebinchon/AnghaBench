
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__ pLocalDrvrInst; scalar_t__ hDrvr; } ;
typedef TYPE_1__* PWINE_ACMDRIVER ;
typedef int MMRESULT ;
typedef int LPARAM ;
typedef int HACMDRIVER ;


 int MMSYSERR_INVALHANDLE ;
 int MSACM_DRIVER_SendMessage (scalar_t__,int ,int ,int ) ;
 TYPE_1__* MSACM_GetDriver (int ) ;
 int SendDriverMessage (scalar_t__,int ,int ,int ) ;

MMRESULT MSACM_Message(HACMDRIVER had, UINT uMsg, LPARAM lParam1, LPARAM lParam2)
{
    PWINE_ACMDRIVER pad = MSACM_GetDriver(had);

    if (!pad) return MMSYSERR_INVALHANDLE;
    if (pad->hDrvr) return SendDriverMessage(pad->hDrvr, uMsg, lParam1, lParam2);
    if (pad->pLocalDrvrInst) return MSACM_DRIVER_SendMessage(pad->pLocalDrvrInst, uMsg, lParam1, lParam2);

    return MMSYSERR_INVALHANDLE;
}
