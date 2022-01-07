
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;


 int LOBYTE (int) ;
 size_t VGA_GC_BITMASK_REG ;
 size_t VGA_GC_ENABLE_RESET_REG ;
 size_t VGA_GC_MODE_REG ;
 size_t VGA_GC_RESET_REG ;
 size_t VGA_GC_ROTATE_REG ;
 int* VgaGcRegisters ;
 int* VgaLatchRegisters ;

__attribute__((used)) static inline BYTE VgaTranslateByteForWriting(BYTE Data, BYTE Plane)
{
    BYTE WriteMode = VgaGcRegisters[VGA_GC_MODE_REG] & 0x03;
    BYTE BitMask = VgaGcRegisters[VGA_GC_BITMASK_REG];

    if (WriteMode == 1)
    {

        return VgaLatchRegisters[Plane];
    }

    if (WriteMode != 2)
    {

        BYTE RotateCount = VgaGcRegisters[VGA_GC_ROTATE_REG] & 0x07;
        Data = LOBYTE(((DWORD)Data >> RotateCount) | ((DWORD)Data << (8 - RotateCount)));
    }
    else
    {

        Data = (Data & (1 << Plane)) ? 0xFF : 0x00;
    }

    if (WriteMode == 0)
    {




        if (VgaGcRegisters[VGA_GC_ENABLE_RESET_REG] & (1 << Plane))
        {

            Data = (VgaGcRegisters[VGA_GC_RESET_REG] & (1 << Plane)) ? 0xFF : 0x00;
        }
    }

    if (WriteMode != 3)
    {

        BYTE LogicalOperation = (VgaGcRegisters[VGA_GC_ROTATE_REG] >> 3) & 0x03;

        if (LogicalOperation == 1) Data &= VgaLatchRegisters[Plane];
        else if (LogicalOperation == 2) Data |= VgaLatchRegisters[Plane];
        else if (LogicalOperation == 3) Data ^= VgaLatchRegisters[Plane];
    }
    else
    {

        BitMask &= Data;


        Data = (VgaGcRegisters[VGA_GC_RESET_REG] & (1 << Plane)) ? 0xFF : 0x00;
    }


    Data = (Data & BitMask) | (VgaLatchRegisters[Plane] & (~BitMask));


    return Data;
}
