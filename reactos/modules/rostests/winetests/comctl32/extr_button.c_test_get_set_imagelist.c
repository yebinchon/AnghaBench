
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uAlign; int * himl; int margin; int member_0; } ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int * HWND ;
typedef int * HIMAGELIST ;
typedef int HDC ;
typedef int * HBITMAP ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ BUTTON_IMAGELIST ;
typedef int BOOL ;


 int BCM_GETIMAGELIST ;
 int BCM_SETIMAGELIST ;
 scalar_t__ BS_DEFCOMMANDLINK ;
 scalar_t__ BS_PUSHBUTTON ;
 void* BUTTON_IMAGELIST_ALIGN_CENTER ;
 int * CreateCompatibleBitmap (int ,scalar_t__,scalar_t__) ;
 int DeleteObject (int *) ;
 int DestroyWindow (int *) ;
 int GetDC (int ) ;
 int ILC_COLOR ;
 scalar_t__ IsRectEmpty (int *) ;
 int ReleaseDC (int ,int ) ;
 int SendMessageA (int *,int ,int ,int ) ;
 scalar_t__ broken (int) ;
 int * create_button (scalar_t__,int *) ;
 int ok (int,char*,...) ;
 scalar_t__ pImageList_Add (int *,int *,int *) ;
 int * pImageList_Create (scalar_t__,scalar_t__,int ,int,int ) ;
 int pImageList_Destroy (int *) ;

__attribute__((used)) static void test_get_set_imagelist(void)
{
    HWND hwnd;
    HIMAGELIST himl;
    BUTTON_IMAGELIST biml = {0};
    HDC hdc;
    HBITMAP hbmp;
    INT width = 16;
    INT height = 16;
    INT index;
    DWORD type;
    BOOL ret;

    hdc = GetDC(0);
    hbmp = CreateCompatibleBitmap(hdc, width, height);
    ok(hbmp != ((void*)0), "Expect hbmp not null\n");

    himl = pImageList_Create(width, height, ILC_COLOR, 1, 0);
    ok(himl != ((void*)0), "Expect himl not null\n");
    index = pImageList_Add(himl, hbmp, ((void*)0));
    ok(index == 0, "Expect index == 0\n");
    DeleteObject(hbmp);
    ReleaseDC(0, hdc);

    for (type = BS_PUSHBUTTON; type <= BS_DEFCOMMANDLINK; type++)
    {
        hwnd = create_button(type, ((void*)0));
        ok(hwnd != ((void*)0), "Expect hwnd not null\n");


        ret = SendMessageA(hwnd, BCM_GETIMAGELIST, 0, (LPARAM)&biml);
        ok(ret, "Expect BCM_GETIMAGELIST return true\n");
        ok(biml.himl == 0 && IsRectEmpty(&biml.margin) && biml.uAlign == 0,
           "Expect BUTTON_IMAGELIST is empty\n");


        biml.himl = 0;
        biml.uAlign = BUTTON_IMAGELIST_ALIGN_CENTER;
        ret = SendMessageA(hwnd, BCM_SETIMAGELIST, 0, (LPARAM)&biml);
        ok(ret || broken(!ret),
           "Expect BCM_SETIMAGELIST return true\n");


        biml.himl = himl;
        biml.uAlign = -1;
        ret = SendMessageA(hwnd, BCM_SETIMAGELIST, 0, (LPARAM)&biml);
        ok(ret, "Expect BCM_SETIMAGELIST return true\n");


        biml.himl = himl;
        biml.uAlign = BUTTON_IMAGELIST_ALIGN_CENTER;
        ret = SendMessageA(hwnd, BCM_SETIMAGELIST, 0, (LPARAM)&biml);
        ok(ret, "Expect BCM_SETIMAGELIST return true\n");
        ret = SendMessageA(hwnd, BCM_GETIMAGELIST, 0, (LPARAM)&biml);
        ok(ret, "Expect BCM_GETIMAGELIST return true\n");
        ok(biml.himl == himl, "Expect himl to be same\n");
        ok(biml.uAlign == BUTTON_IMAGELIST_ALIGN_CENTER, "Expect uAlign to be %x\n",
           BUTTON_IMAGELIST_ALIGN_CENTER);


        ret = SendMessageA(hwnd, BCM_SETIMAGELIST, 0, 0);
        ok(!ret, "Expect BCM_SETIMAGELIST return false\n");
        ret = SendMessageA(hwnd, BCM_GETIMAGELIST, 0, (LPARAM)&biml);
        ok(ret, "Expect BCM_GETIMAGELIST return true\n");
        ok(biml.himl == himl, "Expect himl to be same\n");


        biml.himl = himl;
        biml.uAlign = BUTTON_IMAGELIST_ALIGN_CENTER;
        ret = SendMessageA(hwnd, BCM_SETIMAGELIST, 0, (LPARAM)&biml);
        ok(ret, "Expect BCM_SETIMAGELIST return true\n");
        ret = SendMessageA(hwnd, BCM_GETIMAGELIST, 0, 0);
        ok(!ret, "Expect BCM_GETIMAGELIST return false\n");

        DestroyWindow(hwnd);
    }

    pImageList_Destroy(himl);
}
