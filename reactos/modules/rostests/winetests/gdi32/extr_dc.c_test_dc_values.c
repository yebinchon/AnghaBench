
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;
typedef int COLORREF ;


 int * CreateDCA (char*,int *,int *,int *) ;
 int DeleteDC (int *) ;
 int GetBkColor (int *) ;
 int GetTextCharacterExtra (int *) ;
 int GetTextColor (int *) ;
 int MM_LOMETRIC ;
 int MM_TEXT ;
 int SetBkColor (int *,int) ;
 int SetMapMode (int *,int ) ;
 int SetTextCharacterExtra (int *,int) ;
 int SetTextColor (int *,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_dc_values(void)
{
    HDC hdc = CreateDCA("DISPLAY", ((void*)0), ((void*)0), ((void*)0));
    COLORREF color;
    int extra;

    ok( hdc != ((void*)0), "CreateDC failed\n" );
    color = SetBkColor( hdc, 0x12345678 );
    ok( color == 0xffffff, "initial color %08x\n", color );
    color = GetBkColor( hdc );
    ok( color == 0x12345678, "wrong color %08x\n", color );
    color = SetBkColor( hdc, 0xffffffff );
    ok( color == 0x12345678, "wrong color %08x\n", color );
    color = GetBkColor( hdc );
    ok( color == 0xffffffff, "wrong color %08x\n", color );
    color = SetBkColor( hdc, 0 );
    ok( color == 0xffffffff, "wrong color %08x\n", color );
    color = GetBkColor( hdc );
    ok( color == 0, "wrong color %08x\n", color );

    color = SetTextColor( hdc, 0xffeeddcc );
    ok( color == 0, "initial color %08x\n", color );
    color = GetTextColor( hdc );
    ok( color == 0xffeeddcc, "wrong color %08x\n", color );
    color = SetTextColor( hdc, 0xffffffff );
    ok( color == 0xffeeddcc, "wrong color %08x\n", color );
    color = GetTextColor( hdc );
    ok( color == 0xffffffff, "wrong color %08x\n", color );
    color = SetTextColor( hdc, 0 );
    ok( color == 0xffffffff, "wrong color %08x\n", color );
    color = GetTextColor( hdc );
    ok( color == 0, "wrong color %08x\n", color );

    extra = GetTextCharacterExtra( hdc );
    ok( extra == 0, "initial extra %d\n", extra );
    SetTextCharacterExtra( hdc, 123 );
    extra = GetTextCharacterExtra( hdc );
    ok( extra == 123, "initial extra %d\n", extra );
    SetMapMode( hdc, MM_LOMETRIC );
    extra = GetTextCharacterExtra( hdc );
    ok( extra == 123, "initial extra %d\n", extra );
    SetMapMode( hdc, MM_TEXT );
    extra = GetTextCharacterExtra( hdc );
    ok( extra == 123, "initial extra %d\n", extra );

    DeleteDC( hdc );
}
