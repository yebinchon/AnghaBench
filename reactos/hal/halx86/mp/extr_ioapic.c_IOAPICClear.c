
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;


 int IOAPICClearPin (int,int) ;

__attribute__((used)) static VOID
IOAPICClear(ULONG Apic)
{
   ULONG Pin;

   for (Pin = 0; Pin < 24; Pin++)
   {
     IOAPICClearPin(Apic, Pin);
   }
}
