
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bIsMapper; int drvname; } ;
typedef TYPE_1__ WINE_MM_DRIVER ;
typedef int UINT ;
struct TYPE_8__ {size_t mmdIndex; } ;
typedef TYPE_2__* LPWINE_MLD ;
typedef int LPSTR ;
typedef int* LPDWORD ;
typedef int DWORD_PTR ;
 int LOWORD (int ) ;
 int MMDRV_Message (TYPE_2__*,int,int ,int ) ;
 TYPE_1__* MMDrvs ;
 int MMSYSERR_INVALPARAM ;
 int TRACE (char*,TYPE_2__*,int,int ,int ) ;
 int WARN (char*,...) ;
 int lstrcpynA (int ,int ,int ) ;

UINT MMDRV_PhysicalFeatures(LPWINE_MLD mld, UINT uMsg,
                               DWORD_PTR dwParam1, DWORD_PTR dwParam2)
{
    WINE_MM_DRIVER* lpDrv = &MMDrvs[mld->mmdIndex];

    TRACE("(%p, %04x, %08lx, %08lx)\n", mld, uMsg, dwParam1, dwParam2);


    switch (uMsg) {
    case 132:
        lstrcpynA((LPSTR)dwParam1, lpDrv->drvname, LOWORD(dwParam2));
 break;
    case 134:
        *(LPDWORD)dwParam1 = 0L;
 break;
    case 128:
 WARN("NIY QueryName\n");
 break;
    case 133:
 WARN("NIY call VxD\n");




 break;
    case 129:
 return (lpDrv->bIsMapper) ? 2 : 0;

    case 137:

        *((LPDWORD)dwParam1) = -1;
        *((LPDWORD)dwParam2) = 0;
        break;

    case 136:
    case 135:
        return MMDRV_Message(mld, uMsg, dwParam1, dwParam2);

    case 130:
    case 131:
 return MMDRV_Message(mld, uMsg, dwParam1, dwParam2);

    default:
 WARN("Unknown call %04x\n", uMsg);
 return MMSYSERR_INVALPARAM;
    }
    return 0L;
}
