
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MaxAllocated ;
 int SingleHit ;
 int TotalMemory ;
 int printf (char*,...) ;

__attribute__((used)) static
void DebugMemPrintTotals(void)
{
    printf("[Memory statistics]\n");
    printf("Allocated = %u MaxAlloc = %u Single block hit = %u\n", TotalMemory, MaxAllocated, SingleHit);
}
