
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int DPRINT (int ) ;
 int MaskIrqs () ;
 scalar_t__ OldInt1Handler ;
 int SetGlobalInt (int,int ) ;
 int UnmaskIrqs () ;

void DeInstallTraceHook(void)
{
 DPRINT((0,"DeInstallTraceHook(OldInt1Handler=%0.8x)...\n",OldInt1Handler));

 MaskIrqs();
 if(OldInt1Handler)
 {
  SetGlobalInt(0x01,(ULONG)OldInt1Handler);
        OldInt1Handler = 0;
 }
 UnmaskIrqs();
}
