
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int LOWORD (int) ;
 int SVGA_GC_EXT_MODE_GRAN ;
 size_t SVGA_GC_EXT_MODE_REG ;
 int SVGA_GC_EXT_MODE_WND_B ;
 size_t SVGA_GC_OFFSET_0_REG ;
 size_t SVGA_GC_OFFSET_1_REG ;
 int VGA_GC_MODE_OE ;
 size_t VGA_GC_MODE_REG ;
 int VGA_SEQ_MEM_C4 ;
 size_t VGA_SEQ_MEM_REG ;
 int* VgaGcRegisters ;
 int VgaGetVideoBaseAddress () ;
 int* VgaSeqRegisters ;

__attribute__((used)) static inline DWORD VgaTranslateAddress(DWORD Address)
{
    DWORD Offset = LOWORD(Address - VgaGetVideoBaseAddress());
    DWORD ExtOffset = ((VgaGcRegisters[SVGA_GC_EXT_MODE_REG] & SVGA_GC_EXT_MODE_WND_B) && (Offset & (1 << 15)))
                      ? VgaGcRegisters[SVGA_GC_OFFSET_1_REG]
                      : VgaGcRegisters[SVGA_GC_OFFSET_0_REG];


    if (VgaSeqRegisters[VGA_SEQ_MEM_REG] & VGA_SEQ_MEM_C4)
    {

        Offset &= ~3;
    }
    else if (VgaGcRegisters[VGA_GC_MODE_REG] & VGA_GC_MODE_OE)
    {

        Offset &= ~1;
    }

    if (ExtOffset)
    {

        Offset += ExtOffset << ((VgaGcRegisters[SVGA_GC_EXT_MODE_REG] & SVGA_GC_EXT_MODE_GRAN) ? 14 : 12);
    }


    return Offset;
}
