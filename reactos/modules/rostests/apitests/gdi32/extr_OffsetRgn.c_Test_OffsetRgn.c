
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HRGN ;
typedef int HDC ;


 int COMPLEXREGION ;
 int CombineRgn (int *,int *,int *,int ) ;
 int CreateCompatibleDC (int *) ;
 int * CreateRectRgn (int,int,int,int) ;
 int DeleteObject (int *) ;
 int ERROR ;
 int GetClipRgn (int ,int *) ;
 int INT_MIN ;
 int NULLREGION ;
 int OffsetRgn (int *,int,int) ;
 int RGN_OR ;
 int RGN_XOR ;
 int SIMPLEREGION ;
 int ok (int ,char*) ;
 int ok_int (int ,int ) ;

void Test_OffsetRgn()
{
    HRGN hrgn1, hrgn2;
    HDC hdc;

    hrgn1 = CreateRectRgn(0, 0, 0, 0);
    ok(hrgn1 != ((void*)0), "CreateRectRgn failed\n");
    ok_int(OffsetRgn(hrgn1, INT_MIN + 10, 10), NULLREGION);
    ok_int(OffsetRgn(hrgn1, 0xF000000, 0xF000000), NULLREGION);
    DeleteObject(hrgn1);

    hrgn1 = CreateRectRgn(0, 0, 100, 100);
    ok(hrgn1 != ((void*)0), "CreateRectRgn failed\n");
    ok_int(OffsetRgn(hrgn1, 10, 10), SIMPLEREGION);
    ok_int(OffsetRgn(hrgn1, 0x8000000 - 110, 10), ERROR);
    ok_int(OffsetRgn(hrgn1, 0x8000000 - 111, 10), SIMPLEREGION);
    DeleteObject(hrgn1);

    hrgn1 = CreateRectRgn(0, 0, 100, 100);
    ok(hrgn1 != ((void*)0), "CreateRectRgn failed\n");
    ok_int(OffsetRgn(hrgn1, -10, 10), SIMPLEREGION);
    ok_int(OffsetRgn(hrgn1, -(0x8000000 - 9), 10), ERROR);
    ok_int(OffsetRgn(hrgn1, -(0x8000000 - 10), 10), SIMPLEREGION);
    DeleteObject(hrgn1);

    hrgn1 = CreateRectRgn(0, 0, 10, 10);
    hrgn2 = CreateRectRgn(1000, 20, 1010, 30);
    ok_int(CombineRgn(hrgn1, hrgn1, hrgn2, RGN_OR), COMPLEXREGION);
    ok_int(OffsetRgn(hrgn1, 0x8000000 - 100, 10), ERROR);
    ok_int(CombineRgn(hrgn1, hrgn1, hrgn2, RGN_XOR), SIMPLEREGION);
    DeleteObject(hrgn2);
    hrgn2 = CreateRectRgn(0, 0, 10, 10);
    ok_int(CombineRgn(hrgn1, hrgn1, hrgn2, RGN_XOR), NULLREGION);

    hrgn1 = CreateRectRgn(0, 0, 0, 0);
    hdc = CreateCompatibleDC(((void*)0));
    ok_int(GetClipRgn(hdc, hrgn1), 0);
    ok_int(OffsetRgn(hrgn1, 10, 10), NULLREGION);

}
