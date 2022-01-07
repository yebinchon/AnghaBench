
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef int ACPI_STATUS ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_INVALID_PROTOCOL_ID ;
 size_t ACPI_MAX_PROTOCOL_ID ;
 int AE_AML_PROTOCOL ;
 int AE_INFO ;
 int AE_OK ;
 scalar_t__* AcpiProtocolLengths ;

ACPI_STATUS
AcpiExGetProtocolBufferLength (
    UINT32 ProtocolId,
    UINT32 *ReturnLength)
{

    if ((ProtocolId > ACPI_MAX_PROTOCOL_ID) ||
        (AcpiProtocolLengths[ProtocolId] == ACPI_INVALID_PROTOCOL_ID))
    {
        ACPI_ERROR ((AE_INFO,
            "Invalid Field/AccessAs protocol ID: 0x%4.4X", ProtocolId));

        return (AE_AML_PROTOCOL);
    }

    *ReturnLength = AcpiProtocolLengths[ProtocolId];
    return (AE_OK);
}
