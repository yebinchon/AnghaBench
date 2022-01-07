
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPALETTE ;


 int CreateTestPalette () ;
 int FALSE ;
 int GdiPalGetEntries ;
 int NtGdiDoPalette (int ,int,int,int *,int ,int ) ;
 int TRUE ;
 int ok_long (int ,int) ;

void
Test_NtGdiDoPalette_GdiPalGetEntries(void)
{
    HPALETTE hPal;

    hPal = CreateTestPalette();


    ok_long(NtGdiDoPalette(hPal, 0, 1, ((void*)0), GdiPalGetEntries, TRUE), 0);
    ok_long(NtGdiDoPalette(hPal, 0, 1, ((void*)0), GdiPalGetEntries, FALSE), 5);
    ok_long(NtGdiDoPalette(hPal, 2, 1, ((void*)0), GdiPalGetEntries, FALSE), 5);
    ok_long(NtGdiDoPalette(hPal, 20, 1, ((void*)0), GdiPalGetEntries, FALSE), 5);
    ok_long(NtGdiDoPalette(hPal, -20, 1, ((void*)0), GdiPalGetEntries, FALSE), 5);
    ok_long(NtGdiDoPalette(hPal, 2, 0, ((void*)0), GdiPalGetEntries, FALSE), 5);




}
