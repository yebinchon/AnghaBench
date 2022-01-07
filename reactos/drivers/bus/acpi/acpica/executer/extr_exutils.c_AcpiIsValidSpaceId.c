
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int BOOLEAN ;


 scalar_t__ ACPI_ADR_SPACE_DATA_TABLE ;
 scalar_t__ ACPI_ADR_SPACE_FIXED_HARDWARE ;
 scalar_t__ ACPI_NUM_PREDEFINED_REGIONS ;
 scalar_t__ ACPI_USER_REGION_BEGIN ;
 int FALSE ;
 int TRUE ;

BOOLEAN
AcpiIsValidSpaceId (
    UINT8 SpaceId)
{

    if ((SpaceId >= ACPI_NUM_PREDEFINED_REGIONS) &&
        (SpaceId < ACPI_USER_REGION_BEGIN) &&
        (SpaceId != ACPI_ADR_SPACE_DATA_TABLE) &&
        (SpaceId != ACPI_ADR_SPACE_FIXED_HARDWARE))
    {
        return (FALSE);
    }

    return (TRUE);
}
