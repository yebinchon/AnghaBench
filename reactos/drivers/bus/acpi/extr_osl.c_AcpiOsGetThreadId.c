
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ACPI_THREAD_ID ;


 scalar_t__ PsGetCurrentThreadId () ;

ACPI_THREAD_ID
AcpiOsGetThreadId (void)
{

    return (ULONG_PTR)PsGetCurrentThreadId() + 1;
}
