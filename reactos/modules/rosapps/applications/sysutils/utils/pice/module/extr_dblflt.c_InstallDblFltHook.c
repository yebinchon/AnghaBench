
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int MaskIrqs () ;
 scalar_t__ OldDblFltHandler ;
 scalar_t__ SetGlobalInt (int,scalar_t__) ;
 int UnmaskIrqs () ;

void InstallDblFltHook(void)
{
 ULONG LocalDblFltHandler;

 ENTER_FUNC();

 MaskIrqs();
 if(!OldDblFltHandler)
 {
  __asm__("mov $NewDblFltHandler,%0"
   :"=r" (LocalDblFltHandler)
   :
   :"eax");
  OldDblFltHandler=SetGlobalInt(0x08,(ULONG)LocalDblFltHandler);
 }
 UnmaskIrqs();

    LEAVE_FUNC();
}
