
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int * HWND ;


 int * CreateWindowExW (int ,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int DestroyWindow (int *) ;
 int SendMessageW (int *,int ,int ,int) ;
 int SetWindowTheme (int *,char*,int *) ;
 int TB_GETBUTTONSIZE ;
 int TB_GETPADDING ;
 int TB_SETBITMAPSIZE ;
 int TB_SETBUTTONSIZE ;
 int TB_SETPADDING ;
 int TOOLBARCLASSNAMEW ;
 int ok (int,char*,...) ;

void TestPadding()
{
    HWND hwnd;
    LRESULT bsize;

    hwnd = CreateWindowExW(0, TOOLBARCLASSNAMEW, L"Test", 0, 0, 0, 0, 0, 0, 0, 0, ((void*)0));
    ok(hwnd != ((void*)0), "CreateWindowEx failed\n");

    bsize = SendMessageW(hwnd, TB_GETPADDING, 0, 0);
    ok(bsize == 0x60007, "Expected 0x60007 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETPADDING, 0, 0x10001);
    SendMessageW(hwnd, TB_SETBITMAPSIZE, 0, 0x10001);
    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x10001);

    bsize = SendMessageW(hwnd, TB_GETPADDING, 0, 0);
    ok(bsize == 0x10001, "Expected 0x10001 got %lx\n", bsize);

    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x20002, "Expected 0x20002 got %lx\n", bsize);
    DestroyWindow(hwnd);
}
