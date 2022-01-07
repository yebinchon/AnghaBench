
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiEvWalkGpeList (int ,int *) ;
 int AcpiHwEnableRuntimeGpeBlock ;
 int HwEnableAllRuntimeGpes ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiHwEnableAllRuntimeGpes (
    void)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (HwEnableAllRuntimeGpes);


    Status = AcpiEvWalkGpeList (AcpiHwEnableRuntimeGpeBlock, ((void*)0));
    return_ACPI_STATUS (Status);
}
