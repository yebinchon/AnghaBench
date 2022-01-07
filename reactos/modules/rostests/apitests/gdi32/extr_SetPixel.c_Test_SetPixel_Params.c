
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HDC ;


 scalar_t__ CreateCompatibleDC (int *) ;
 scalar_t__ CreateICA (char*,int *,int *,int *) ;
 int DeleteDC (scalar_t__) ;
 int ERROR_INVALID_HANDLE ;
 int RGB (int,int,int) ;
 int SetLastError (int ) ;
 int SetPixel (scalar_t__,int ,int ,int ) ;
 int ok (int,char*) ;
 int ok_err (int ) ;
 int ok_long (int ,int) ;

void Test_SetPixel_Params()
{
    HDC hdc;

    SetLastError(0);
    ok_long(SetPixel(0, 0, 0, RGB(255,255,255)), -1);
    ok_err(ERROR_INVALID_HANDLE);


    hdc = CreateICA("DISPLAY", ((void*)0), ((void*)0), ((void*)0));
    ok(hdc != 0, "\n");
    SetLastError(0);
    ok_long(SetPixel(hdc, 0, 0, 0), -1);
    ok_long(SetPixel(hdc, 0, 0, RGB(255,255,255)), -1);
    ok_err(0);
    DeleteDC(hdc);


    hdc = CreateCompatibleDC(((void*)0));
    ok(hdc != 0, "\n");
    SetLastError(0);
    ok_long(SetPixel(hdc, 0, 0, 0), -1);
    ok_err(0);
    DeleteDC(hdc);


    ok_long(SetPixel(hdc, 0, 0, 0), -1);

}
