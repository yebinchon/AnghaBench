
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ peRed; scalar_t__ peGreen; scalar_t__ peBlue; int peFlags; } ;
typedef TYPE_1__ PALETTEENTRY ;
typedef int HPALETTE ;
typedef int HDC ;


 int CreateHalftonePalette (int ) ;
 int DEFAULT_PALETTE ;
 int DeleteObject (int ) ;
 int GetDC (int ) ;
 int GetPaletteEntries (int ,int ,int,TYPE_1__*) ;
 int GetStockObject (int ) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_halftone_palette(void)
{
    HDC hdc;
    HPALETTE pal;
    PALETTEENTRY entries[256];
    PALETTEENTRY defpal[20];
    int i, count;

    hdc = GetDC(0);

    count = GetPaletteEntries( GetStockObject(DEFAULT_PALETTE), 0, 20, defpal );
    ok( count == 20, "wrong size %u\n", count );

    pal = CreateHalftonePalette( hdc );
    count = GetPaletteEntries( pal, 0, 256, entries );
    ok( count == 256 || broken(count <= 20),
        "wrong size %u\n", count );


    if (count >= 20)
    {
        for (i = 0; i < 8; i++)
        {
            ok( entries[i].peRed == defpal[i].peRed &&
                entries[i].peGreen == defpal[i].peGreen &&
                entries[i].peBlue == defpal[i].peBlue &&
                !entries[i].peFlags,
                "%u: wrong color %02x,%02x,%02x,%02x instead of %02x,%02x,%02x\n", i,
                entries[i].peRed, entries[i].peGreen, entries[i].peBlue, entries[i].peFlags,
                defpal[i].peRed, defpal[i].peGreen, defpal[i].peBlue );
        }
        for (i = count - 8; i < count; i++)
        {
            int idx = i - count + 20;
            ok( entries[i].peRed == defpal[idx].peRed &&
                entries[i].peGreen == defpal[idx].peGreen &&
                entries[i].peBlue == defpal[idx].peBlue &&
                !entries[i].peFlags,
                "%u: wrong color %02x,%02x,%02x,%02x instead of %02x,%02x,%02x\n", i,
                entries[i].peRed, entries[i].peGreen, entries[i].peBlue, entries[i].peFlags,
                defpal[idx].peRed, defpal[idx].peGreen, defpal[idx].peBlue );
        }
    }
    DeleteObject( pal );
    ReleaseDC( 0, hdc );
}
