
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int DPRINT (char*,int) ;
 int KeStallExecutionProcessor (int) ;

void
AcpiOsSleep (UINT64 milliseconds)
{
    DPRINT("AcpiOsSleep %d\n", milliseconds);
    KeStallExecutionProcessor(milliseconds*1000);
}
