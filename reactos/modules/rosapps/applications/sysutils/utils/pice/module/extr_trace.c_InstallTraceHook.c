
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int BOOLEAN ;


 int DPRINT (int ) ;
 int MaskIrqs () ;
 scalar_t__ OldInt1Handler ;
 scalar_t__ SetGlobalInt (int,scalar_t__) ;
 int TRUE ;
 int UnmaskIrqs () ;

BOOLEAN InstallTraceHook(void)
{
 ULONG LocalInt1Handler;

    DPRINT((0,"InstallTraceHook(OldInt1Handler=%0.8x)...\n",OldInt1Handler));

 MaskIrqs();
 if(!OldInt1Handler)
 {
  __asm__("mov $NewInt1Handler,%0"
   :"=r" (LocalInt1Handler)
   :
   :"eax");
  OldInt1Handler=SetGlobalInt(0x01,(ULONG)LocalInt1Handler);
 }
 UnmaskIrqs();
 return TRUE;
}
