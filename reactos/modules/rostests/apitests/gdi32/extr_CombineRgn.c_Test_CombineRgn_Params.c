
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HRGN ;


 int CombineRgn (int *,int *,int *,int) ;
 int * CreateRectRgn (int,int,int,int) ;
 int ERROR ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,int) ;
 int ok_long (int ,int ) ;

void Test_CombineRgn_Params()
{
    HRGN hrgn1, hrgn2, hrgn3;

    hrgn1 = CreateRectRgn(0, 0, 0, 0);
    hrgn2 = CreateRectRgn(0, 0, 10, 10);
    hrgn3 = CreateRectRgn(5, 5, 20, 20);

    SetLastError(0xbadbabe);
    ok_long(CombineRgn(((void*)0), ((void*)0), ((void*)0), 0), ERROR);
    ok_long(CombineRgn(hrgn1, hrgn2, hrgn3, 0), ERROR);
    ok_long(CombineRgn(hrgn1, hrgn2, hrgn3, 6), ERROR);
    ok((GetLastError() == 0xbadbabe) || (GetLastError() == ERROR_INVALID_PARAMETER), "wrong error: %ld\n", GetLastError());

}
