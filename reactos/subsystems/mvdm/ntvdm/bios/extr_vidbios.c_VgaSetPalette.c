
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t ULONG ;
typedef int COLORREF ;


 int GetBValue (int const) ;
 int GetGValue (int const) ;
 int GetRValue (int const) ;
 int IOWriteB (int ,size_t) ;
 size_t VGA_COLOR_TO_DAC (int) ;
 int VGA_DAC_DATA ;
 int VGA_DAC_WRITE_INDEX ;
 size_t VGA_MAX_COLORS ;

__attribute__((used)) static VOID VgaSetPalette(const COLORREF* Palette, ULONG Size)
{
    ULONG i;





    for (i = 0; i < Size; i++)
    {
        IOWriteB(VGA_DAC_WRITE_INDEX, i);
        IOWriteB(VGA_DAC_DATA, VGA_COLOR_TO_DAC(GetRValue(Palette[i])));
        IOWriteB(VGA_DAC_DATA, VGA_COLOR_TO_DAC(GetGValue(Palette[i])));
        IOWriteB(VGA_DAC_DATA, VGA_COLOR_TO_DAC(GetBValue(Palette[i])));
    }


    for (i = Size; i < VGA_MAX_COLORS; i++)
    {
        IOWriteB(VGA_DAC_WRITE_INDEX, i);
        IOWriteB(VGA_DAC_DATA, VGA_COLOR_TO_DAC(0x00));
        IOWriteB(VGA_DAC_DATA, VGA_COLOR_TO_DAC(0x00));
        IOWriteB(VGA_DAC_DATA, VGA_COLOR_TO_DAC(0x00));
    }




}
