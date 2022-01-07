
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRGN ;


 int COMPLEXREGION ;
 int CombineRgn (int ,int ,int ,int ) ;
 int CreateRectRgn (int,int ,int,int) ;
 int EqualRgn (int ,int ) ;
 int RGN_OR ;
 int SIMPLEREGION ;
 int SetRectRgn (int ,int,int,int,int) ;
 int ok (int ,char*) ;
 int ok_long (int ,int ) ;

void Test_CombineRgn_OR()
{
    HRGN hrgn1, hrgn2, hrgn3;

    hrgn1 = CreateRectRgn(0, 0, 0, 0);
    hrgn2 = CreateRectRgn(0, 0, 5, 5);
    hrgn3 = CreateRectRgn(5, 0, 10, 5);
    ok_long(CombineRgn(hrgn1, hrgn2, hrgn3, RGN_OR), SIMPLEREGION);
    SetRectRgn(hrgn2, 0, 0, 10, 5);
    ok(EqualRgn(hrgn1, hrgn2), "Region is not correct\n");

    SetRectRgn(hrgn2, 0, 0, 10, 10);
    SetRectRgn(hrgn3, 10, 10, 20, 20);
    ok_long(CombineRgn(hrgn1, hrgn2, hrgn3, RGN_OR), COMPLEXREGION);
    SetRectRgn(hrgn2, 10, 0, 20, 10);
    ok_long(CombineRgn(hrgn1, hrgn1, hrgn2, RGN_OR), COMPLEXREGION);
    ok_long(CombineRgn(hrgn1, hrgn1, hrgn1, RGN_OR), COMPLEXREGION);
    SetRectRgn(hrgn2, 0, 10, 10, 20);
    ok_long(CombineRgn(hrgn1, hrgn1, hrgn2, RGN_OR), SIMPLEREGION);
    SetRectRgn(hrgn2, 0, 0, 20, 20);
    ok(EqualRgn(hrgn1, hrgn2), "Region is not correct\n");

}
