
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int MaskIrqs () ;
 scalar_t__ OldIntEHandler ;
 int SetGlobalInt (int,int ) ;
 int UnmaskIrqs () ;

void DeInstallIntEHook(void)
{
 ENTER_FUNC();

 MaskIrqs();
 if(OldIntEHandler)
 {
  SetGlobalInt(0x0E,(ULONG)OldIntEHandler);
        OldIntEHandler=0;
 }
 UnmaskIrqs();

    LEAVE_FUNC();
}
