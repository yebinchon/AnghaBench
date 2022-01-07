
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_9__ {int peBlue; int peGreen; int peRed; } ;
struct TYPE_8__ {TYPE_1__* ActiveBuffer; } ;
struct TYPE_7__ {int * PaletteHandle; } ;
typedef TYPE_2__* PCONSRV_CONSOLE ;
typedef TYPE_3__ PALETTEENTRY ;
typedef int * HPALETTE ;
typedef int COLORREF ;


 int GetPaletteEntries (int *,int ,int,TYPE_3__*) ;
 int PALETTERGB (int ,int ,int ) ;
 int RGBFromAttrib (TYPE_2__*,int ) ;

__attribute__((used)) static COLORREF
PaletteRGBFromAttrib(PCONSRV_CONSOLE Console, WORD Attribute)
{
    HPALETTE hPalette = Console->ActiveBuffer->PaletteHandle;
    PALETTEENTRY pe;

    if (hPalette == ((void*)0)) return RGBFromAttrib(Console, Attribute);

    GetPaletteEntries(hPalette, Attribute, 1, &pe);
    return PALETTERGB(pe.peRed, pe.peGreen, pe.peBlue);
}
