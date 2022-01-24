#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PRINTPROVIDOR ;
typedef  int /*<<< orphan*/  (* PInitializePrintProvidor ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  LPPRINTPROVIDOR ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

BOOL
FUNC4(LPPRINTPROVIDOR pp)
{
    HMODULE hLocalspl;
    PInitializePrintProvidor pfnInitializePrintProvidor;

    // Get us a handle to the loaded localspl.dll.
    hLocalspl = FUNC1(L"localspl");
    if (!hLocalspl)
    {
        FUNC3("GetModuleHandleW failed with error %u!\n", FUNC0());
        return FALSE;
    }

    // Get a pointer to its InitializePrintProvidor function.
    pfnInitializePrintProvidor = (PInitializePrintProvidor)FUNC2(hLocalspl, "InitializePrintProvidor");
    if (!pfnInitializePrintProvidor)
    {
        FUNC3("GetProcAddress failed with error %u!\n", FUNC0());
        return FALSE;
    }

    // Get localspl's function pointers.
    if (!pfnInitializePrintProvidor(pp, sizeof(PRINTPROVIDOR), NULL))
    {
        FUNC3("pfnInitializePrintProvidor failed with error %u!\n", FUNC0());
        return FALSE;
    }

    return TRUE;
}