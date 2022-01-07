
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int MaskIrqs () ;
 scalar_t__ OldGPFaultHandler ;
 scalar_t__ SetGlobalInt (int,scalar_t__) ;
 int UnmaskIrqs () ;

void InstallGPFaultHook(void)
{
 ULONG LocalGPFaultHandler;

 ENTER_FUNC();

 MaskIrqs();
 if(!OldGPFaultHandler)
 {
  __asm__("mov $NewGPFaultHandler,%0"
   :"=r" (LocalGPFaultHandler)
   :
   :"eax");
  OldGPFaultHandler=SetGlobalInt(0x0D,(ULONG)LocalGPFaultHandler);
 }
 UnmaskIrqs();

    LEAVE_FUNC();
}
