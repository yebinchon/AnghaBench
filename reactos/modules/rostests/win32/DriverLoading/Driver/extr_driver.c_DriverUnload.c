
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PDRIVER_OBJECT ;


 int DbgPrint (char*) ;

VOID
DriverUnload(PDRIVER_OBJECT pDriverObject)
{
    DbgPrint("Test driver unloaded sucessfully\n");
}
