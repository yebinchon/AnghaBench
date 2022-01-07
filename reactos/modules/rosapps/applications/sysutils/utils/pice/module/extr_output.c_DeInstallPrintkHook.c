
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (int ) ;
 scalar_t__ DeInstallSWBreakpoint (scalar_t__) ;
 int ENTER_FUNC () ;
 scalar_t__ FALSE ;
 int LEAVE_FUNC () ;
 scalar_t__ bIsPrintkPatched ;
 scalar_t__ ulPrintk ;

void DeInstallPrintkHook(void)
{
    ENTER_FUNC();

 DPRINT((0,"enter DeInstallPrintkHook()\n"));
    if(bIsPrintkPatched && ulPrintk)
    {

        if (DeInstallSWBreakpoint(ulPrintk))
      bIsPrintkPatched = FALSE;
    }
    LEAVE_FUNC();
}
