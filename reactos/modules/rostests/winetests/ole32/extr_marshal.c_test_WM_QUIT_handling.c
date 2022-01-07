
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;


 int CW_USEDEFAULT ;
 int * CreateWindowA (char*,int *,int ,int ,int ,int ,int ,int *,int *,int *,int ) ;
 int DispatchMessageA (int *) ;
 scalar_t__ GetMessageA (int *,int *,int ,int ) ;
 int PostMessageA (int *,scalar_t__,int ,int ) ;
 int TranslateMessage (int *) ;
 scalar_t__ WM_USER ;
 int * hwnd_app ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_WM_QUIT_handling(void)
{
    MSG msg;

    hwnd_app = CreateWindowA("WineCOMTest", ((void*)0), 0, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, ((void*)0), ((void*)0), ((void*)0), 0);
    ok(hwnd_app != ((void*)0), "Window creation failed\n");


    PostMessageA(hwnd_app, WM_USER+1, 0, 0);

    while (GetMessageA(&msg, ((void*)0), 0, 0))
    {
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
    }
}
