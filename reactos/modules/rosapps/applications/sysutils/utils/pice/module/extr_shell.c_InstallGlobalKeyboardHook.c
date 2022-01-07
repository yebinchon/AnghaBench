
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 int ENTER_FUNC () ;
 int KeyboardIRQL ;
 int LEAVE_FUNC () ;
 int MaskIrqs () ;
 scalar_t__ OldGlobalInt31Handler ;
 scalar_t__ SetGlobalInt (int ,scalar_t__) ;
 int UnmaskIrqs () ;

void InstallGlobalKeyboardHook(void)
{
 ULONG LocalNewGlobalInt31Handler;

 ENTER_FUNC();

 MaskIrqs();
 if(!OldGlobalInt31Handler)
 {
  __asm__("mov $NewGlobalInt31Handler,%0"
   :"=r" (LocalNewGlobalInt31Handler)
   :
   :"eax");
  OldGlobalInt31Handler=SetGlobalInt(KeyboardIRQL,(ULONG)LocalNewGlobalInt31Handler);
 }
 UnmaskIrqs();

    LEAVE_FUNC();
}
