#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int W32PF_flags; int /*<<< orphan*/  peProcess; } ;
typedef  TYPE_1__* PPROCESSINFO ;
typedef  int /*<<< orphan*/  HHOOK ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_1__* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STUB ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int W32PF_APIHOOKLOADED ; 
 int WH_APIHOOK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  strUahInitFunc ; 
 int /*<<< orphan*/  strUahModule ; 

BOOL
FUNC4(int iHookID, HHOOK hHook, BOOL Unload)
{
   PPROCESSINFO ppi;
   BOOL bResult;

   ppi = FUNC0();

   FUNC2("IntLoadHookModule. Client PID: %p\n", FUNC1(ppi->peProcess));

    /* Check if this is the api hook */
    if(iHookID == WH_APIHOOK)
    {
        if(!Unload && !(ppi->W32PF_flags & W32PF_APIHOOKLOADED))
        {
            /* A callback in user mode can trigger UserLoadApiHook to be called and
               as a result IntLoadHookModule will be called recursively.
               To solve this we set the flag that means that the appliaction has
               loaded the api hook before the callback and in case of error we remove it */
            ppi->W32PF_flags |= W32PF_APIHOOKLOADED;

            /* Call ClientLoadLibrary in user32 */
            bResult = FUNC3(&strUahModule, &strUahInitFunc, Unload, TRUE);
            FUNC2("co_IntClientLoadLibrary returned %d\n", bResult );
            if (!bResult)
            {
                /* Remove the flag we set before */
                ppi->W32PF_flags &= ~W32PF_APIHOOKLOADED;
            }
            return bResult;
        }
        else if(Unload && (ppi->W32PF_flags & W32PF_APIHOOKLOADED))
        {
            /* Call ClientLoadLibrary in user32 */
            bResult = FUNC3(NULL, NULL, Unload, TRUE);
            if (bResult)
            {
                ppi->W32PF_flags &= ~W32PF_APIHOOKLOADED;
            }
            return bResult;
        }

        return TRUE;
    }

    STUB;

    return FALSE;
}