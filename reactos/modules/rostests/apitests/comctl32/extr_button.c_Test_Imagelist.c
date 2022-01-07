
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ himl; scalar_t__ uAlign; int margin; } ;
typedef int LPARAM ;
typedef int * HWND ;
typedef scalar_t__ HIMAGELIST ;
typedef TYPE_1__ BUTTON_IMAGELIST ;
typedef scalar_t__ BOOL ;


 int BCM_GETIMAGELIST ;
 int BCM_SETIMAGELIST ;
 int * CreateWindowW (char*,char*,int ,int,int,int,int,int ,int *,int *,int *) ;
 int DestroyWindow (int *) ;
 scalar_t__ FALSE ;
 scalar_t__ SendMessageW (int *,int ,int ,int ) ;
 int SetRect (int *,int ,int ,int ,int) ;
 scalar_t__ TRUE ;
 int ok (int,char*) ;
 int ok_rect (int ,int ,int ,int ,int) ;

void Test_Imagelist()
{
    HWND hwnd1;
    BOOL ret;
    BUTTON_IMAGELIST imlData;

    hwnd1 = CreateWindowW(L"Button", L"Test2", 0, 10, 10, 100, 100, 0, ((void*)0), ((void*)0), ((void*)0));
    ok (hwnd1 != ((void*)0), "Expected CreateWindowW to succeed\n");

    ret = SendMessageW(hwnd1, BCM_GETIMAGELIST, 0, (LPARAM)&imlData);
    ok (ret == TRUE, "Expected BCM_GETIMAGELIST to succeed\n");
    ok (imlData.himl == 0, "Expected 0 himl\n");
    ok (imlData.uAlign == 0, "Expected 0 uAlign\n");
    ok_rect(imlData.margin, 0, 0, 0, 0);

    SetRect(&imlData.margin, 0,0,0,1);
    ret = SendMessageW(hwnd1, BCM_SETIMAGELIST, 0, (LPARAM)&imlData);
    ok (ret == FALSE, "Expected BCM_SETIMAGELIST to fail\n");

    imlData.himl = (HIMAGELIST)0xdead;
    ret = SendMessageW(hwnd1, BCM_SETIMAGELIST, 0, (LPARAM)&imlData);
    ok (ret == TRUE, "Expected BCM_SETIMAGELIST to fail\n");

    ret = SendMessageW(hwnd1, BCM_GETIMAGELIST, 0, (LPARAM)&imlData);
    ok (ret == TRUE, "Expected BCM_GETIMAGELIST to succeed\n");
    ok (imlData.himl == (HIMAGELIST)0xdead, "Expected 0 himl\n");
    ok (imlData.uAlign == 0, "Expected 0 uAlign\n");
    ok_rect(imlData.margin, 0, 0, 0, 1);

    imlData.himl = 0;
    ret = SendMessageW(hwnd1, BCM_SETIMAGELIST, 0, (LPARAM)&imlData);
    ok (ret == FALSE, "Expected BCM_SETIMAGELIST to fail\n");

    DestroyWindow(hwnd1);
}
