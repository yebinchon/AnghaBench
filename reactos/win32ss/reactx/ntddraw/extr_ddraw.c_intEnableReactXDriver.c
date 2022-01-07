
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ pfn; } ;
struct TYPE_18__ {TYPE_6__* ppdev; } ;
struct TYPE_12__ {int * EnableDirectDraw; int * DisableDirectDraw; } ;
struct TYPE_17__ {TYPE_5__* pEDDgpl; TYPE_1__ DriverFunctions; } ;
struct TYPE_15__ {int dwSize; } ;
struct TYPE_14__ {int dwSize; } ;
struct TYPE_13__ {int dwSize; } ;
struct TYPE_16__ {TYPE_4__ ddPaletteCallbacks; TYPE_3__ ddSurfaceCallbacks; TYPE_2__ ddCallbacks; int * pvmList; } ;
typedef TYPE_6__* PPDEVOBJ ;
typedef int (* PGD_DXDDENABLEDIRECTDRAW ) (TYPE_6__*,int ) ;
typedef int * PEPROCESS ;
typedef TYPE_8__* PDC ;
typedef int NTSTATUS ;
typedef int HDC ;
typedef int DD_SURFACECALLBACKS ;
typedef int DD_PALETTECALLBACKS ;
typedef int DD_CALLBACKS ;
typedef int BOOL ;


 TYPE_8__* DC_LockDc (int ) ;
 int DC_UnlockDc (TYPE_8__*) ;
 int DPRINT1 (char*,...) ;
 size_t DXG_INDEX_DxDdEnableDirectDraw ;
 int DxDdStartupDxGraphics (int ,int *,int ,int *,int *,int *) ;
 int FALSE ;
 int NT_SUCCESS (int ) ;
 int TRUE ;
 TYPE_9__* gpDxFuncs ;
 int * gpfnStartupDxGraphics ;

BOOL
intEnableReactXDriver(HDC hdc)
{
    NTSTATUS Status;
    PEPROCESS Proc = ((void*)0);
    PDC pDC = ((void*)0);
    PPDEVOBJ pDev = ((void*)0);
    PGD_DXDDENABLEDIRECTDRAW pfnDdEnableDirectDraw = ((void*)0);
    BOOL success = FALSE;




    if (gpfnStartupDxGraphics == ((void*)0))
    {
        Status = DxDdStartupDxGraphics(0,((void*)0),0,((void*)0),((void*)0), Proc);
        if (!NT_SUCCESS(Status))
        {
            DPRINT1("Warning: Failed to create the directx interface\n");
            return FALSE;
        }
    }

    pDC = DC_LockDc(hdc);
    if (pDC == ((void*)0))
    {
        DPRINT1("Warning: Failed to lock hdc\n");
        return FALSE;
    }

    pDev = pDC->ppdev;


    if ( ( pDev->DriverFunctions.DisableDirectDraw == ((void*)0)) ||
          ( pDev->DriverFunctions.EnableDirectDraw == ((void*)0)))
    {
        DPRINT1("Warning : DisableDirectDraw and EnableDirectDraw are NULL, no dx driver \n");
    }
    else
    {


        if ( pDev->pEDDgpl->pvmList == ((void*)0))
        {
            pDev->pEDDgpl->ddCallbacks.dwSize = sizeof(DD_CALLBACKS);
            pDev->pEDDgpl->ddSurfaceCallbacks.dwSize = sizeof(DD_SURFACECALLBACKS);
            pDev->pEDDgpl->ddPaletteCallbacks.dwSize = sizeof(DD_PALETTECALLBACKS);

            pfnDdEnableDirectDraw = (PGD_DXDDENABLEDIRECTDRAW)gpDxFuncs[DXG_INDEX_DxDdEnableDirectDraw].pfn;
            if (pfnDdEnableDirectDraw == ((void*)0))
            {
                DPRINT1("Warning: no pfnDdEnableDirectDraw\n");
            }
            else
            {
                DPRINT1(" call to pfnDdEnableDirectDraw \n ");


                success = pfnDdEnableDirectDraw(pDC->ppdev, TRUE);
            }
        }
        else
        {
            DPRINT1(" The dxg.sys and graphic card driver interface is enabled \n ");
            success = TRUE;
        }
    }


    DPRINT1("Return value : 0x%08x\n",success);
    DC_UnlockDc(pDC);
    DPRINT1(" end call to pfnDdEnableDirectDraw \n ");
    return success;
}
