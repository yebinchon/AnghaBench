
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cbSize; scalar_t__ hIcon; char* lpszClassName; int * hIconSm; int hInstance; int lpfnWndProc; } ;
typedef TYPE_1__ WNDCLASSEXW ;
typedef char WCHAR ;
typedef int LPCWSTR ;
typedef int LONG_PTR ;
typedef int ICONINFO ;
typedef int * HWND ;
typedef int HINSTANCE ;
typedef int * HICON ;


 int ClassTest_WndProc ;
 int * CopyImage (scalar_t__,int ,int ,int ,int ) ;
 int * CreateWindowExW (int ,char*,int *,int ,int ,int ,int ,int ,int *,int *,int ,int ) ;
 int DestroyIcon (int *) ;
 int DestroyWindow (int *) ;
 int GCLP_HICON ;
 int GCLP_HICONSM ;
 int GetClassInfoExW (int ,char*,TYPE_1__*) ;
 scalar_t__ GetClassLongPtrW (int *,int ) ;
 int GetIconInfo (int *,int *) ;
 int GetModuleHandleW (int ) ;
 int GetSystemMetrics (int ) ;
 int ICON_BIG ;
 int ICON_SMALL ;
 int ICON_SMALL2 ;
 scalar_t__ IDI_APPLICATION ;
 scalar_t__ IDI_QUESTION ;
 int IMAGE_ICON ;
 scalar_t__ LoadIconW (int *,int ) ;
 int RegisterClassExW (TYPE_1__*) ;
 int SM_CXSMICON ;
 int SM_CYSMICON ;
 scalar_t__ SendMessageA (int *,int ,int ,int ) ;
 int SetClassLongPtrW (int *,int ,int ) ;
 int UnregisterClassW (char*,int ) ;
 int WM_GETICON ;
 int WS_OVERLAPPEDWINDOW ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_icons(void)
{
    WNDCLASSEXW wcex, ret_wcex;
    WCHAR cls_name[] = {'I','c','o','n','T','e','s','t','C','l','a','s','s',0};
    HWND hwnd;
    HINSTANCE hinst = GetModuleHandleW(0);
    HICON hsmicon, hsmallnew;
    ICONINFO icinf;

    memset(&wcex, 0, sizeof wcex);
    wcex.cbSize = sizeof wcex;
    wcex.lpfnWndProc = ClassTest_WndProc;
    wcex.hIcon = LoadIconW(0, (LPCWSTR)IDI_APPLICATION);
    wcex.hInstance = hinst;
    wcex.lpszClassName = cls_name;
    ok(RegisterClassExW(&wcex), "RegisterClassExW returned 0\n");
    hwnd = CreateWindowExW(0, cls_name, ((void*)0), WS_OVERLAPPEDWINDOW,
                        0, 0, 0, 0, ((void*)0), ((void*)0), hinst, 0);
    ok(hwnd != ((void*)0), "Window was not created\n");

    ok(GetClassInfoExW(hinst, cls_name, &ret_wcex), "Class info was not retrieved\n");
    ok(wcex.hIcon == ret_wcex.hIcon, "Icons don't match\n");
    ok(ret_wcex.hIconSm != ((void*)0), "hIconSm should be non-zero handle\n");

    hsmicon = (HICON)GetClassLongPtrW(hwnd, GCLP_HICONSM);
    ok(hsmicon != ((void*)0), "GetClassLong should return non-zero handle\n");

    ok(SendMessageA(hwnd, WM_GETICON, ICON_BIG, 0) == 0,
                    "WM_GETICON with ICON_BIG should not return the class icon\n");
    ok(SendMessageA(hwnd, WM_GETICON, ICON_SMALL, 0) == 0,
                    "WM_GETICON with ICON_SMALL should not return the class icon\n");
    ok(SendMessageA(hwnd, WM_GETICON, ICON_SMALL2, 0) == 0,
                    "WM_GETICON with ICON_SMALL2 should not return the class icon\n");

    hsmallnew = CopyImage(wcex.hIcon, IMAGE_ICON, GetSystemMetrics(SM_CXSMICON),
                                                GetSystemMetrics(SM_CYSMICON), 0);
    ok(!SetClassLongPtrW(hwnd, GCLP_HICONSM, (LONG_PTR)hsmallnew),
                    "Previous hIconSm should be zero\n");
    ok(hsmallnew == (HICON)GetClassLongPtrW(hwnd, GCLP_HICONSM),
                    "Should return explicitly assigned small icon\n");
    ok(!GetIconInfo(hsmicon, &icinf), "Previous small icon should be destroyed\n");

    SetClassLongPtrW(hwnd, GCLP_HICONSM, 0);
    hsmicon = (HICON)GetClassLongPtrW(hwnd, GCLP_HICONSM);
    ok( hsmicon != ((void*)0), "GetClassLong should return non-zero handle\n");

    SetClassLongPtrW(hwnd, GCLP_HICON, 0);
    ok(!GetClassLongPtrW(hwnd, GCLP_HICONSM), "GetClassLong should return zero handle\n");

    SetClassLongPtrW(hwnd, GCLP_HICON, (LONG_PTR)LoadIconW(((void*)0), (LPCWSTR)IDI_QUESTION));
    hsmicon = (HICON)GetClassLongPtrW(hwnd, GCLP_HICONSM);
    ok(hsmicon != ((void*)0), "GetClassLong should return non-zero handle\n");
    UnregisterClassW(cls_name, hinst);
    ok(GetIconInfo(hsmicon, &icinf), "Icon should NOT be destroyed\n");

    DestroyIcon(hsmallnew);
    DestroyWindow(hwnd);
}
