
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* fnMessage32 ) (int ,int ,long,long,long) ;} ;
typedef TYPE_1__ WINE_MM_DRIVER_PART ;
typedef size_t UINT ;
struct TYPE_6__ {TYPE_1__* parts; } ;
typedef TYPE_2__* LPWINE_MM_DRIVER ;
typedef int DWORD ;
typedef int BOOL ;


 int DRVM_DISABLE ;
 int DRVM_EXIT ;
 int TRACE (char*,TYPE_2__*,...) ;
 int TRUE ;
 int WINMM_ErrorToString (int ) ;
 int stub1 (int ,int ,long,long,long) ;
 int stub2 (int ,int ,long,long,long) ;

__attribute__((used)) static BOOL MMDRV_ExitPerType(LPWINE_MM_DRIVER lpDrv, UINT type)
{
    WINE_MM_DRIVER_PART* part = &lpDrv->parts[type];
    DWORD ret;
    TRACE("(%p, %04x)\n", lpDrv, type);

    if (part->fnMessage32) {




        ret = part->fnMessage32(0, DRVM_EXIT, 0L, 0L, 0L);
        TRACE("DRVM_EXIT => %s\n", WINMM_ErrorToString(ret));
    }

    return TRUE;
}
