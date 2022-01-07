
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT64 ;
struct TYPE_3__ {int BitOffset; int BitWidth; scalar_t__ SpaceId; scalar_t__ AccessWidth; } ;
typedef TYPE_1__ ACPI_GENERIC_ADDRESS ;


 int ACPI_ACCESS_BIT_WIDTH (scalar_t__) ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ;
 scalar_t__ ACPI_IS_ALIGNED (int,int) ;
 scalar_t__ ACPI_IS_POWER_OF_TWO (int) ;
 int ACPI_ROUND_UP_POWER_OF_TWO_8 (int) ;

__attribute__((used)) static UINT8
AcpiHwGetAccessBitWidth (
    UINT64 Address,
    ACPI_GENERIC_ADDRESS *Reg,
    UINT8 MaxBitWidth)
{
    UINT8 AccessBitWidth;
    if (!Reg->BitOffset && Reg->BitWidth &&
        ACPI_IS_POWER_OF_TWO (Reg->BitWidth) &&
        ACPI_IS_ALIGNED (Reg->BitWidth, 8))
    {
        AccessBitWidth = Reg->BitWidth;
    }
    else if (Reg->AccessWidth)
    {
        AccessBitWidth = ACPI_ACCESS_BIT_WIDTH (Reg->AccessWidth);
    }
    else
    {
        AccessBitWidth = ACPI_ROUND_UP_POWER_OF_TWO_8 (
            Reg->BitOffset + Reg->BitWidth);
        if (AccessBitWidth <= 8)
        {
            AccessBitWidth = 8;
        }
        else
        {
            while (!ACPI_IS_ALIGNED (Address, AccessBitWidth >> 3))
            {
                AccessBitWidth >>= 1;
            }
        }
    }



    if (Reg->SpaceId == ACPI_ADR_SPACE_SYSTEM_IO)
    {
        MaxBitWidth = 32;
    }






    if (AccessBitWidth < MaxBitWidth)
    {
        return (AccessBitWidth);
    }
    return (MaxBitWidth);
}
