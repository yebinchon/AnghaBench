
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int ENTER_FUNC () ;
 int KeyboardIRQL ;
 int LEAVE_FUNC () ;
 int MaskIrqs () ;
 scalar_t__ OldGlobalInt31Handler ;
 int SetGlobalInt (int ,int ) ;
 int UnmaskIrqs () ;

void DeInstallGlobalKeyboardHook(void)
{
    ENTER_FUNC();

 MaskIrqs();
 if(OldGlobalInt31Handler)
 {
  SetGlobalInt(KeyboardIRQL,(ULONG)OldGlobalInt31Handler);
  OldGlobalInt31Handler=0;
 }
 UnmaskIrqs();

    LEAVE_FUNC();
}
