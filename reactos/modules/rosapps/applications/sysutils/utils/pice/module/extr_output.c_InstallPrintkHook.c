
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PULONG ;


 int ASSERT (scalar_t__) ;
 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 scalar_t__ InstallSWBreakpoint (scalar_t__,int ,int ) ;
 int LEAVE_FUNC () ;
 int PrintkCallback ;
 int ScanExports (char*,int ) ;
 int TRUE ;
 scalar_t__ bIsPrintkPatched ;
 scalar_t__ ulPrintk ;

void InstallPrintkHook(void)
{

 ENTER_FUNC();

 if( bIsPrintkPatched )
   return;

  DPRINT((0,"installing PrintString hook\n"));
 ScanExports("_KdpPrintString",(PULONG)&ulPrintk);

 DPRINT((0,"_KdpPrintString @ %x\n", ulPrintk));
 ASSERT( ulPrintk );
    if(ulPrintk)
    {
      bIsPrintkPatched = InstallSWBreakpoint(ulPrintk,TRUE,PrintkCallback);
    DPRINT((0,"KdpPrintStringTest breakpoint installed? %d\n", bIsPrintkPatched));
    }

 LEAVE_FUNC();
}
