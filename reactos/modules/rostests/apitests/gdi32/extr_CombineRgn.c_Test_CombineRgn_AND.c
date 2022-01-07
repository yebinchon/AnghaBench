
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HRGN ;


 int BLACK_PEN ;
 int COMPLEXREGION ;
 int CombineRgn (int *,int *,int *,int ) ;
 int * CreateRectRgn (int,int,int,int) ;
 int ERROR ;
 int ERROR_INVALID_HANDLE ;
 int EqualRgn (int *,int *) ;
 int GetLastError () ;
 int * GetStockObject (int ) ;
 int NULLREGION ;
 int RGN_AND ;
 int RGN_OR ;
 int SIMPLEREGION ;
 int SetLastError (int) ;
 int SetRectRgn (int *,int,int,int,int) ;
 int ok (int,char*,...) ;
 int ok_long (int ,int ) ;

void Test_CombineRgn_AND()
{
    HRGN hrgn1, hrgn2, hrgn3;

    hrgn1 = CreateRectRgn(0, 0, 0, 0);
    hrgn2 = CreateRectRgn(0, 0, 10, 10);
    hrgn3 = CreateRectRgn(5, 5, 20, 20);

    SetLastError(0xbadbabe);
    ok_long(CombineRgn(((void*)0), ((void*)0), ((void*)0), RGN_AND), ERROR);
    ok_long(CombineRgn(hrgn1, ((void*)0), ((void*)0), RGN_AND), ERROR);
    ok_long(CombineRgn(hrgn1, hrgn2, ((void*)0), RGN_AND), ERROR);
    ok_long(CombineRgn(hrgn1, ((void*)0), hrgn2, RGN_AND), ERROR);
    ok_long(CombineRgn(hrgn1, GetStockObject(BLACK_PEN), hrgn2, RGN_AND), ERROR);
    ok_long(CombineRgn(hrgn1, hrgn2, GetStockObject(BLACK_PEN), RGN_AND), ERROR);
    ok((GetLastError() == 0xbadbabe) || (GetLastError() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", GetLastError());


    ok_long(CombineRgn(hrgn1, hrgn2, hrgn3, RGN_AND), SIMPLEREGION);
    SetRectRgn(hrgn2, 5, 5, 10, 10);
    ok(EqualRgn(hrgn1, hrgn2), "Region is not correct\n");

    SetRectRgn(hrgn2, 0, 0, 5, 5);
    SetRectRgn(hrgn3, 5, 0, 10, 5);
    ok_long(CombineRgn(hrgn1, hrgn2, hrgn3, RGN_AND), NULLREGION);
    SetRectRgn(hrgn2, 0, 0, 0, 0);
    ok(EqualRgn(hrgn1, hrgn2), "Region is not correct\n");

    SetRectRgn(hrgn2, 0, 0, 20, 20);
    SetRectRgn(hrgn3, 5, 5, 10, 10);
    ok_long(CombineRgn(hrgn1, hrgn2, hrgn3, RGN_AND), SIMPLEREGION);
    SetRectRgn(hrgn2, 5, 5, 10, 10);
    ok(EqualRgn(hrgn1, hrgn2), "Region is not correct\n");


    SetRectRgn(hrgn2, 0, 0, 30, 10);
    SetRectRgn(hrgn3, 10, 10, 20, 30);
    ok_long(CombineRgn(hrgn1, hrgn2, hrgn3, RGN_OR), COMPLEXREGION);
    SetRectRgn(hrgn2, 10, 0, 30, 30);
    ok_long(CombineRgn(hrgn1, hrgn1, hrgn2, RGN_AND), COMPLEXREGION);
    ok_long(CombineRgn(hrgn1, hrgn1, hrgn1, RGN_AND), COMPLEXREGION);
    SetRectRgn(hrgn2, 10, 10, 30, 30);
    ok_long(CombineRgn(hrgn1, hrgn1, hrgn2, RGN_AND), SIMPLEREGION);
    SetRectRgn(hrgn2, 0, 0, 10, 10);
    ok_long(CombineRgn(hrgn1, hrgn1, hrgn2, RGN_AND), NULLREGION);

    SetRectRgn(hrgn1, 0, 0, 30, 10);
    ok_long(CombineRgn(hrgn1, hrgn1, hrgn1, RGN_AND), SIMPLEREGION);

}
