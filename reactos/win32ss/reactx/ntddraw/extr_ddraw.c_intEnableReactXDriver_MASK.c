#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ pfn; } ;
struct TYPE_18__ {TYPE_6__* ppdev; } ;
struct TYPE_12__ {int /*<<< orphan*/ * EnableDirectDraw; int /*<<< orphan*/ * DisableDirectDraw; } ;
struct TYPE_17__ {TYPE_5__* pEDDgpl; TYPE_1__ DriverFunctions; } ;
struct TYPE_15__ {int dwSize; } ;
struct TYPE_14__ {int dwSize; } ;
struct TYPE_13__ {int dwSize; } ;
struct TYPE_16__ {TYPE_4__ ddPaletteCallbacks; TYPE_3__ ddSurfaceCallbacks; TYPE_2__ ddCallbacks; int /*<<< orphan*/ * pvmList; } ;
typedef  TYPE_6__* PPDEVOBJ ;
typedef  int /*<<< orphan*/  (* PGD_DXDDENABLEDIRECTDRAW ) (TYPE_6__*,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/ * PEPROCESS ;
typedef  TYPE_8__* PDC ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  DD_SURFACECALLBACKS ;
typedef  int /*<<< orphan*/  DD_PALETTECALLBACKS ;
typedef  int /*<<< orphan*/  DD_CALLBACKS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 size_t DXG_INDEX_DxDdEnableDirectDraw ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_9__* gpDxFuncs ; 
 int /*<<< orphan*/ * gpfnStartupDxGraphics ; 

BOOL
FUNC5(HDC hdc)
{
    NTSTATUS Status;
    PEPROCESS Proc = NULL;
    PDC pDC = NULL;
    PPDEVOBJ pDev = NULL;
    PGD_DXDDENABLEDIRECTDRAW pfnDdEnableDirectDraw = NULL;
    BOOL success = FALSE;

    /* FIXME: Get the process data */

    /* Do not try load dxg.sys when it have already been load once */
    if (gpfnStartupDxGraphics == NULL)
    {
        Status = FUNC3(0,NULL,0,NULL,NULL, Proc);
        if (!FUNC4(Status))
        {
            FUNC2("Warning: Failed to create the directx interface\n");
            return FALSE;
        }
    }

    pDC = FUNC0(hdc);
    if (pDC == NULL)
    {
        FUNC2("Warning: Failed to lock hdc\n");
        return FALSE;
    }

    pDev = pDC->ppdev;

    /* Test and see if drv got a DX interface or not */
    if  ( ( pDev->DriverFunctions.DisableDirectDraw == NULL) ||
          ( pDev->DriverFunctions.EnableDirectDraw == NULL))
    {
        FUNC2("Warning : DisableDirectDraw and EnableDirectDraw are NULL, no dx driver \n");
    }
    else
    {

        /* Check and see if DX has been enabled or not */
        if ( pDev->pEDDgpl->pvmList == NULL)
        {
            pDev->pEDDgpl->ddCallbacks.dwSize = sizeof(DD_CALLBACKS);
            pDev->pEDDgpl->ddSurfaceCallbacks.dwSize = sizeof(DD_SURFACECALLBACKS);
            pDev->pEDDgpl->ddPaletteCallbacks.dwSize = sizeof(DD_PALETTECALLBACKS);

            pfnDdEnableDirectDraw = (PGD_DXDDENABLEDIRECTDRAW)gpDxFuncs[DXG_INDEX_DxDdEnableDirectDraw].pfn;
            if (pfnDdEnableDirectDraw == NULL)
            {
                FUNC2("Warning: no pfnDdEnableDirectDraw\n");
            }
            else
            {
                FUNC2(" call to pfnDdEnableDirectDraw \n ");

                /* Note: it is the hdev struct it wants, not the drv hPDev aka pdc->PDev */
                success = pfnDdEnableDirectDraw(pDC->ppdev, TRUE);
            }
        }
        else
        {
            FUNC2(" The dxg.sys and graphic card driver interface is enabled \n ");
            success = TRUE;
        }
    }


    FUNC2("Return value : 0x%08x\n",success);
    FUNC1(pDC);
    FUNC2(" end call to pfnDdEnableDirectDraw \n ");
    return success;
}