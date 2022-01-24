#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ bDestroyTarget; int /*<<< orphan*/  hwndTarget; int /*<<< orphan*/ * hbm32bpp; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ GHOST_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FNID_DESTROY ; 
 int /*<<< orphan*/  GHOST_PROP ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_SHOWNOACTIVATE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(HWND hwnd)
{
    // delete the user data
    GHOST_DATA *pData = FUNC3(hwnd);
    if (pData)
    {
        FUNC8(hwnd, GWLP_USERDATA, 0);

        // delete image
        FUNC0(pData->hbm32bpp);
        pData->hbm32bpp = NULL;

        // remove prop
        FUNC7(pData->hwndTarget, GHOST_PROP);

        // show target
        FUNC9(pData->hwndTarget, SW_SHOWNOACTIVATE);

        // destroy target if necessary
        if (pData->bDestroyTarget)
        {
            FUNC2(pData);
        }

        FUNC4(FUNC1(), 0, pData);
    }

    FUNC5(hwnd, FNID_DESTROY);

    FUNC6(0);
}