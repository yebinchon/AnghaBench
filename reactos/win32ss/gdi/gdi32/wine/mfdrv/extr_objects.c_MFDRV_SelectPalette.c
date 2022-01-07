
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int palNumEntries; int palPalEntry; int palVersion; } ;
typedef TYPE_1__* PLOGPALETTE ;
typedef int PHYSDEV ;
typedef int PALETTEENTRY ;
typedef int LOGPALETTE ;
typedef int HPALETTE ;
typedef scalar_t__ BOOL ;


 int GetObjectA (int ,int,int*) ;
 int GetPaletteEntries (int ,int ,int,int ) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ MFDRV_CreatePalette (int ,int ,TYPE_1__*,int) ;
 int PALVERSION ;

HPALETTE MFDRV_SelectPalette( PHYSDEV dev, HPALETTE hPalette, BOOL bForceBackground )
{


    PLOGPALETTE logPalette;
    WORD wNumEntries = 0;
    BOOL creationSucceed;
    int sizeofPalette;

    GetObjectA(hPalette, sizeof(WORD), &wNumEntries);

    if (wNumEntries == 0) return 0;

    sizeofPalette = sizeof(LOGPALETTE) + ((wNumEntries-1) * sizeof(PALETTEENTRY));
    logPalette = HeapAlloc( GetProcessHeap(), 0, sizeofPalette );

    if (logPalette == ((void*)0)) return 0;

    logPalette->palVersion = 0x0300;
    logPalette->palNumEntries = wNumEntries;

    GetPaletteEntries(hPalette, 0, wNumEntries, logPalette->palPalEntry);

    creationSucceed = MFDRV_CreatePalette( dev, hPalette, logPalette, sizeofPalette );

    HeapFree( GetProcessHeap(), 0, logPalette );

    if (creationSucceed)
        return hPalette;

    return 0;
}
