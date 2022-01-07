
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int * HRGN ;
typedef int * HDC ;


 int CLIPRGN ;
 int * CreateCompatibleDC (int ) ;
 int * CreateRectRgn (int,int,int,int) ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int ERROR_INVALID_HANDLE ;
 int GetLastError () ;
 int GetRandomRgn (int *,int *,int) ;
 int SetLastError (int) ;
 int ok (int,char*,int) ;
 int ok_err (int) ;
 int ok_int (int ,int) ;
 int printf (char*) ;

void Test_GetRandomRgn_Params()
{
    HDC hdc;
    HRGN hrgn;
    INT ret;

    hdc = CreateCompatibleDC(0);
    if (!hdc)
    {
        printf("Coun't create a dc\n");
        return;
    }

    hrgn = CreateRectRgn(11, 17, 23, 42);
    if (!hrgn)
    {
        printf("Coun't create a region\n");
        return;
    }

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(((void*)0), ((void*)0), 0);
    ok_int(ret, -1);
    ok((GetLastError() == 0xbadbad00) || (GetLastError() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", GetLastError());

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(((void*)0), ((void*)0), CLIPRGN);
    ok_int(ret, -1);
    ok((GetLastError() == 0xbadbad00) || (GetLastError() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", GetLastError());

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(((void*)0), hrgn, 0);
    ok_int(ret, -1);
    ok((GetLastError() == 0xbadbad00) || (GetLastError() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", GetLastError());

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(((void*)0), hrgn, CLIPRGN);
    ok_int(ret, -1);
    ok((GetLastError() == 0xbadbad00) || (GetLastError() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", GetLastError());

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(hdc, ((void*)0), 0);
    ok_int(ret, 0);
    ok_err(0xbadbad00);

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(hdc, ((void*)0), CLIPRGN);
    ok_int(ret, 0);
    ok_err(0xbadbad00);

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(hdc, hrgn, 0);
    ok_int(ret, 0);
    ok_err(0xbadbad00);






    SetLastError(0xbadbad00);
    ret = GetRandomRgn(hdc, hrgn, 6);
    ok_int(ret, 0);
    ok_err(0xbadbad00);

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(hdc, hrgn, 27);
    ok_int(ret, 0);
    ok_err(0xbadbad00);

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(hdc, hrgn, -1);
    ok_int(ret, 0);
    ok_err(0xbadbad00);

    SetLastError(0xbadbad00);
    ret = GetRandomRgn(hdc, hrgn, CLIPRGN);
    ok_int(ret, 0);
    ok_err(0xbadbad00);

    SetLastError(0xbadbad00);
    ret = GetRandomRgn((HDC)0x123, hrgn, CLIPRGN);
    ok_int(ret, -1);
    ok((GetLastError() == 0xbadbad00) || (GetLastError() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", GetLastError());

    DeleteObject(hrgn);
    DeleteDC(hdc);
}
