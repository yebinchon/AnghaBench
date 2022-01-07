
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int W32PF_flags; int peProcess; } ;
typedef TYPE_1__* PPROCESSINFO ;
typedef int HHOOK ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 TYPE_1__* PsGetCurrentProcessWin32Process () ;
 scalar_t__ PsGetProcessId (int ) ;
 int STUB ;
 int TRACE (char*,scalar_t__) ;
 scalar_t__ TRUE ;
 int W32PF_APIHOOKLOADED ;
 int WH_APIHOOK ;
 scalar_t__ co_IntClientLoadLibrary (int *,int *,scalar_t__,scalar_t__) ;
 int strUahInitFunc ;
 int strUahModule ;

BOOL
IntLoadHookModule(int iHookID, HHOOK hHook, BOOL Unload)
{
   PPROCESSINFO ppi;
   BOOL bResult;

   ppi = PsGetCurrentProcessWin32Process();

   TRACE("IntLoadHookModule. Client PID: %p\n", PsGetProcessId(ppi->peProcess));


    if(iHookID == WH_APIHOOK)
    {
        if(!Unload && !(ppi->W32PF_flags & W32PF_APIHOOKLOADED))
        {




            ppi->W32PF_flags |= W32PF_APIHOOKLOADED;


            bResult = co_IntClientLoadLibrary(&strUahModule, &strUahInitFunc, Unload, TRUE);
            TRACE("co_IntClientLoadLibrary returned %d\n", bResult );
            if (!bResult)
            {

                ppi->W32PF_flags &= ~W32PF_APIHOOKLOADED;
            }
            return bResult;
        }
        else if(Unload && (ppi->W32PF_flags & W32PF_APIHOOKLOADED))
        {

            bResult = co_IntClientLoadLibrary(((void*)0), ((void*)0), Unload, TRUE);
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
