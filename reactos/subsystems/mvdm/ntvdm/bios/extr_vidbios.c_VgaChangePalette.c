
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int COLORREF ;
typedef int BYTE ;


 int ARRAYSIZE (int *) ;
 int * CgaPalette2 ;
 int * EgaPalette__16Colors ;
 int * EgaPalette__HiRes ;
 int * VgaPalette ;
 int VgaSetPalette (int const*,int ) ;

__attribute__((used)) static VOID VgaChangePalette(BYTE ModeNumber)
{
    const COLORREF* Palette;
    ULONG Size;

    if (ModeNumber >= 0x13)
    {

        Palette = VgaPalette;
        Size = ARRAYSIZE(VgaPalette);
    }
    else if (ModeNumber == 0x10)
    {

        Palette = EgaPalette__HiRes;
        Size = ARRAYSIZE(EgaPalette__HiRes);
    }
    else
    {

        Palette = EgaPalette__16Colors;
        Size = ARRAYSIZE(EgaPalette__16Colors);
    }

    VgaSetPalette(Palette, Size);
}
