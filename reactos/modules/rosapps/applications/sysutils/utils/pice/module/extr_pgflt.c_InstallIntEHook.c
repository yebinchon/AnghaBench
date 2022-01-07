
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int MaskIrqs () ;
 scalar_t__ OldIntEHandler ;
 scalar_t__ SetGlobalInt (int,scalar_t__) ;
 int UnmaskIrqs () ;

void InstallIntEHook(void)
{
 ULONG LocalIntEHandler;

 ENTER_FUNC();

 MaskIrqs();
 if(!OldIntEHandler)
 {
  __asm__ __volatile__("mov $NewIntEHandler,%0"
   :"=r" (LocalIntEHandler)
   :
   :"eax");
  OldIntEHandler=SetGlobalInt(0x0E,(ULONG)LocalIntEHandler);
 }
 UnmaskIrqs();
 DPRINT((0,"OldIntE @ %x\n", OldIntEHandler));
    LEAVE_FUNC();
}
