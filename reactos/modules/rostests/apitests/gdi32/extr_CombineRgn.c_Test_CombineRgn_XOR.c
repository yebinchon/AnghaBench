
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
 int RGN_OR ;
 int RGN_XOR ;
 int SIMPLEREGION ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int ok_long (int ,int ) ;

void Test_CombineRgn_XOR()
{
    HRGN hrgn1, hrgn2, hrgn3, hrgn4;

    hrgn1 = CreateRectRgn(0, 0, 0, 0);
    hrgn2 = CreateRectRgn(0, 0, 5, 5);
    hrgn3 = CreateRectRgn(5, 5, 10, 10);
    hrgn4 = CreateRectRgn(0, 0, 0, 0);

    SetLastError(0xbadbabe);
    ok_long(CombineRgn(((void*)0), ((void*)0), ((void*)0), RGN_XOR), ERROR);
    ok_long(CombineRgn(hrgn1, ((void*)0), ((void*)0), RGN_XOR), ERROR);
    ok_long(CombineRgn(hrgn1, hrgn2, ((void*)0), RGN_XOR), ERROR);
    ok_long(CombineRgn(hrgn1, ((void*)0), hrgn2, RGN_XOR), ERROR);
    ok_long(CombineRgn(hrgn1, GetStockObject(BLACK_PEN), hrgn2, RGN_XOR), ERROR);
    ok_long(CombineRgn(hrgn1, hrgn2, GetStockObject(BLACK_PEN), RGN_XOR), ERROR);
    ok((GetLastError() == 0xbadbabe) || (GetLastError() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", GetLastError());

    ok_long(CombineRgn(hrgn1, hrgn2, hrgn3, RGN_XOR), COMPLEXREGION);
    ok_long(CombineRgn(hrgn4, hrgn2, hrgn3, RGN_OR), COMPLEXREGION);
    ok(EqualRgn(hrgn1, hrgn4), "Region is not correct\n");

    ok_long(CombineRgn(hrgn1, hrgn1, hrgn2, RGN_XOR), SIMPLEREGION);
    ok(EqualRgn(hrgn1, hrgn3), "Region is not correct\n");
    ok_long(CombineRgn(hrgn1, hrgn1, hrgn3, RGN_XOR), NULLREGION);


}
