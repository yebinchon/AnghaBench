
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* lpszClassName; int lpfnWndProc; } ;
typedef TYPE_1__ WNDCLASSW ;
typedef char WCHAR ;


 int * CreateWindowExW (int ,char const*,int *,int ,int ,int ,int,int,int *,int ,int ,int *) ;
 int DefWindowProcW ;
 int RegisterClassW (TYPE_1__*) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int * hwnd ;
 int ok (int ,char*) ;

__attribute__((used)) static void setup_window(void)
{
    WNDCLASSW wc;
    static const WCHAR ebtestW[] = {'e','b','t','e','s','t',0};

    ZeroMemory(&wc, sizeof(WNDCLASSW));
    wc.lpfnWndProc = DefWindowProcW;
    wc.lpszClassName = ebtestW;
    RegisterClassW(&wc);
    hwnd = CreateWindowExW(0, ebtestW, ((void*)0), 0,
                           0, 0, 500, 500,
                           ((void*)0), 0, 0, ((void*)0));
    ok(hwnd != ((void*)0), "Failed to create window for tests.\n");
}
