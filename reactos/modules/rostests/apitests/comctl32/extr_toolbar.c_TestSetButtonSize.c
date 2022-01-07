
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int * HWND ;


 int * CreateWindowExW (int ,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int DestroyWindow (int *) ;
 int MAKELONG (int ,int ) ;
 int SendMessageW (int *,int ,int ,int) ;
 int TB_GETBUTTONSIZE ;
 int TB_SETBUTTONSIZE ;
 int TOOLBARCLASSNAMEW ;
 int ok (int,char*,...) ;

void TestSetButtonSize()
{
    HWND hwnd;
    LRESULT bsize;

    hwnd = CreateWindowExW(0, TOOLBARCLASSNAMEW, L"Test", 0, 0, 0, 0, 0, 0, 0, 0, ((void*)0));
    ok(hwnd != ((void*)0), "CreateWindowEx failed\n");

    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x160017, "Expected 0x160017 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, MAKELONG(0, 0));
    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x160018, "Expected 0x160018 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x10001);
    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x160017, "Expected 0x160017 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x100001);
    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x160017, "Expected 0x160017 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x160017);
    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x160017, "Expected 0x160017 got %lx\n", bsize);

    SendMessageW(hwnd, TB_SETBUTTONSIZE, 0, 0x170017);
    bsize = SendMessageW(hwnd, TB_GETBUTTONSIZE, 0, 0);
    ok(bsize == 0x170017, "Expected 0x170017 got %lx\n", bsize);

    DestroyWindow(hwnd);
}
