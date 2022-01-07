
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int palEntries2 ;
typedef int palEntries ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int peFlags; int peBlue; int peGreen; int peRed; } ;
typedef TYPE_1__ PALETTEENTRY ;
typedef scalar_t__ HPALETTE ;
typedef int HDC ;


 int CreateCompatibleDC (int *) ;
 scalar_t__ CreateTestPalette () ;
 int DEFAULT_PALETTE ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int GdiPalGetEntries ;
 int GdiPalSetEntries ;
 int GetLastError () ;
 scalar_t__ GetStockObject (int ) ;
 int NtGdiDoPalette (scalar_t__,int,int,TYPE_1__*,int ,int ) ;
 scalar_t__ SelectPalette (int ,scalar_t__,int ) ;
 int SetLastError (int) ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int memcmp (TYPE_1__*,TYPE_1__*,int) ;
 int ok_int (int ,int ) ;
 int ok_long (int ,int) ;

void
Test_NtGdiDoPalette_GdiPalSetEntries(void)
{
    HDC hDC;
    HPALETTE hPal, hOldPal;
    PALETTEENTRY palEntries[5] = {
        {0,0,0,0},
        {0xff,0xff,0xff,0},
        {0x33,0x66,0x99,0},
        {0x25,0x84,0x14,0},
        {0x12,0x34,0x56,0x11}};
    PALETTEENTRY palEntries2[5];

    hPal = CreateTestPalette();


    SetLastError(ERROR_SUCCESS);
    ok_long(NtGdiDoPalette((HPALETTE)23, 0, 1, palEntries, GdiPalSetEntries, TRUE), 0);
    ok_long(GetLastError(), ERROR_SUCCESS);


    ok_long(NtGdiDoPalette(GetStockObject(DEFAULT_PALETTE), 0, 1, palEntries, GdiPalSetEntries, TRUE), 0);
    ok_long(GetLastError(), ERROR_SUCCESS);

    ok_long(NtGdiDoPalette(hPal, 0, 1, palEntries, GdiPalSetEntries, TRUE), 1);
    ok_long(NtGdiDoPalette(hPal, 0, 2, palEntries, GdiPalSetEntries, TRUE), 2);
    ok_long(NtGdiDoPalette(hPal, 0, 3, palEntries, GdiPalSetEntries, TRUE), 3);
    ok_long(NtGdiDoPalette(hPal, 0, 5, palEntries, GdiPalSetEntries, TRUE), 5);
    ok_long(NtGdiDoPalette(hPal, 0, 6, palEntries, GdiPalSetEntries, TRUE), 5);
    ok_long(NtGdiDoPalette(hPal, 3, 6, palEntries, GdiPalSetEntries, TRUE), 2);



    NtGdiDoPalette(hPal, 0, 5, palEntries, GdiPalSetEntries, TRUE);
    ZeroMemory(palEntries2, sizeof(palEntries2));
    ok_long(NtGdiDoPalette(hPal, 0, 5, palEntries2, GdiPalSetEntries, FALSE), 5);

    ok_int(memcmp(palEntries2, palEntries, sizeof(palEntries)), 0);


    ZeroMemory(palEntries2, sizeof(palEntries2));
    ok_long(NtGdiDoPalette(hPal, 0, 5, palEntries2, GdiPalGetEntries, FALSE), 5);
    ok_int(memcmp(palEntries2, palEntries, sizeof(palEntries)), 0);

    ok_long(NtGdiDoPalette(hPal, 0, 4, palEntries2, GdiPalSetEntries, TRUE), 4);
    ok_long(GetLastError(), ERROR_SUCCESS);


    hPal = CreateTestPalette();
    NtGdiDoPalette(hPal, 0, 5, palEntries, GdiPalSetEntries, TRUE);
    NtGdiDoPalette(hPal, 0, 5, palEntries2, GdiPalGetEntries, FALSE);
    ok_int(palEntries2[0].peRed, 0);
    ok_int(palEntries2[0].peGreen, 0);
    ok_int(palEntries2[0].peBlue, 0);
    ok_int(palEntries2[0].peFlags, 0);





    hDC = CreateCompatibleDC(((void*)0));
    hOldPal = SelectPalette(hDC, hPal, 0);
    ok_long(NtGdiDoPalette(hPal, 0, 4, palEntries, GdiPalSetEntries, TRUE), 4);
    SelectPalette(hDC, hOldPal, 0);


    ok_long(NtGdiDoPalette(hPal, 0, 1, ((void*)0), GdiPalGetEntries, TRUE), 0);

}
