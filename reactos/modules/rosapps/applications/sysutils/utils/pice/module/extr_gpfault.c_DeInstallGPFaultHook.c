
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int MaskIrqs () ;
 scalar_t__ OldGPFaultHandler ;
 int RemoveAllSWBreakpoints (int ) ;
 int SetGlobalInt (int,int ) ;
 int TRUE ;
 int UnmaskIrqs () ;

void DeInstallGPFaultHook(void)
{
 ENTER_FUNC();

 MaskIrqs();
 if(OldGPFaultHandler)
 {
        RemoveAllSWBreakpoints(TRUE);
  SetGlobalInt(0x0D,(ULONG)OldGPFaultHandler);
        OldGPFaultHandler=0;
 }
 UnmaskIrqs();

    LEAVE_FUNC();
}
