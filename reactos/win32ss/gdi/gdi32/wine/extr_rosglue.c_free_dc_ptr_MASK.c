#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  hdc; TYPE_3__* physDev; } ;
typedef  TYPE_2__ WINEDC ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* pDeleteDC ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ GDILoObjType_LO_ALTDC_TYPE ; 
 scalar_t__ GDILoObjType_LO_METADC16_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

VOID
FUNC9(WINEDC* pWineDc)
{
    /* Invoke the DeleteDC callback to clean up the DC */
    pWineDc->physDev->funcs->pDeleteDC(pWineDc->physDev);

    /* FIXME */
    if (FUNC1(pWineDc->hdc) == GDILoObjType_LO_ALTDC_TYPE)
    {
        /* Get rid of the LDC */
        FUNC0((WINEDC*)FUNC3(pWineDc->hdc) == pWineDc);
        FUNC4(pWineDc->hdc, NULL);

        /* Free the DC */
        FUNC7(pWineDc->hdc);
    }
    else if (FUNC1(pWineDc->hdc) == GDILoObjType_LO_METADC16_TYPE)
    {
        FUNC2(pWineDc->hdc);
    }

    /* Free the Wine DC */
    FUNC6(FUNC5(), 0, pWineDc);
}