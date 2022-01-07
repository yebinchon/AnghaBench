
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_READ ;
 int AE_OK ;
 int AcpiEvAddressSpaceDispatch (int *,int *,int ,scalar_t__,int,scalar_t__*) ;

__attribute__((used)) static ACPI_STATUS
AcpiExRegionRead (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT32 Length,
    UINT8 *Buffer)
{
    ACPI_STATUS Status;
    UINT64 Value;
    UINT32 RegionOffset = 0;
    UINT32 i;




    for (i = 0; i < Length; i++)
    {
        Status = AcpiEvAddressSpaceDispatch (ObjDesc, ((void*)0), ACPI_READ,
            RegionOffset, 8, &Value);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        *Buffer = (UINT8) Value;
        Buffer++;
        RegionOffset++;
    }

    return (AE_OK);
}
