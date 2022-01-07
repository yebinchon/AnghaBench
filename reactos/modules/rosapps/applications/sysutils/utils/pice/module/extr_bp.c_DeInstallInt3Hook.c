
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int MaskIrqs () ;
 scalar_t__ OldInt3Handler ;
 int RemoveAllSWBreakpoints (int ) ;
 int SetGlobalInt (int,int ) ;
 int TRUE ;
 int UnmaskIrqs () ;

void DeInstallInt3Hook(void)
{
 ENTER_FUNC();
 DPRINT((0,"enter DeInstallInt3Hook()...\n"));

 MaskIrqs();
 if(OldInt3Handler)
 {
        RemoveAllSWBreakpoints(TRUE);
  SetGlobalInt(0x03,(ULONG)OldInt3Handler);
        OldInt3Handler=0;
 }
 UnmaskIrqs();

 DPRINT((0,"leave DeInstallInt3Hook()...\n"));
    LEAVE_FUNC();
}
