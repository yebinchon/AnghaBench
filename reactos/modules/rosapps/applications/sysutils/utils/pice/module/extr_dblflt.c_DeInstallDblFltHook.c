
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int MaskIrqs () ;
 scalar_t__ OldDblFltHandler ;
 int RemoveAllSWBreakpoints (int ) ;
 int SetGlobalInt (int,int ) ;
 int TRUE ;
 int UnmaskIrqs () ;

void DeInstallDblFltHook(void)
{
 ENTER_FUNC();

 MaskIrqs();
 if(OldDblFltHandler)
 {
        RemoveAllSWBreakpoints(TRUE);
  SetGlobalInt(0x08,(ULONG)OldDblFltHandler);
        OldDblFltHandler=0;
 }
 UnmaskIrqs();

    LEAVE_FUNC();
}
