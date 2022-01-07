
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ HDC ;
typedef int BOOL ;


 scalar_t__ CreateCompatibleDC (int *) ;
 scalar_t__ CreateICA (char*,int *,int *,int *) ;
 int DeleteDC (scalar_t__) ;
 int MAKEROP4 (int,int) ;
 int PATCOPY ;
 int PATINVERT ;
 int PatBlt (scalar_t__,int ,int ,int,int,int) ;
 int SRCCOPY ;
 int SetLastError (int ) ;
 scalar_t__ hdcTarget ;
 int ok (int,char*,...) ;
 int ok_err (int ) ;
 int ok_long (int,int) ;

void Test_PatBlt_Params()
{
    BOOL ret;
    ULONG i, rop;
    HDC hdc;


    ret = PatBlt(hdcTarget, 0, 0, 1, 1, PATCOPY & 0x00FF0000);
    ok_long(ret, 1);


    ret = PatBlt(hdcTarget, 0, 0, 1, 1, (PATCOPY & 0x00FF0000) | 0xab00cdef);
    ok_long(ret, 1);


    SetLastError(0);
    ok_long(PatBlt(hdcTarget, 0, 0, 1, 1, SRCCOPY) , 0);
    ok_err(0);


    for (i = 0; i < 256; i++)
    {
        rop = i << 16;
        ret = PatBlt(hdcTarget, 0, 0, 1, 1, rop);


        if ((i == 0) || (i == 5) || (i == 10) || (i == 15) || (i == 80) ||
            (i == 85) || (i == 90) || (i == 95) || (i == 160) || (i == 165) ||
            (i == 170) || (i == 175) || (i == 240) || (i == 245) ||
            (i == 250) || (i == 255))
        {
            ok(ret == 1, "index %ld failed, but should succeed\n", i);
        }
        else
        {
            ok(ret == 0, "index %ld succeeded, but should fail\n", i);
        }
    }


    ret = PatBlt(hdcTarget, 0, 0, 1, 1, MAKEROP4(PATCOPY, PATINVERT));
    ok_long(ret, 1);
    ret = PatBlt(hdcTarget, 0, 0, 1, 1, MAKEROP4(PATCOPY, SRCCOPY));
    ok_long(ret, 1);
    ret = PatBlt(hdcTarget, 0, 0, 1, 1, MAKEROP4(SRCCOPY, PATCOPY));
    ok_long(ret, 0);


    hdc = CreateICA("DISPLAY", ((void*)0), ((void*)0), ((void*)0));
    ok(hdc != 0, "\n");
    SetLastError(0);
    ok_long(PatBlt(hdc, 0, 0, 1, 1, PATCOPY), 1);
    ok_err(0);
    DeleteDC(hdc);


    hdc = CreateCompatibleDC(((void*)0));
    ok(hdc != 0, "\n");
    ok_long(PatBlt(hdc, 0, 0, 1, 1, PATCOPY), 1);
    ok_err(0);
    DeleteDC(hdc);



}
