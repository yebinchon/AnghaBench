
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HWND ;
typedef int DWORD ;


 int * CreateWindowExA (int ,int ,int *,int ,int ,int ,int,int,int *,int *,int ,int *) ;
 int STATUSCLASSNAMEA ;
 int hinst ;
 int ok (int ,char*) ;

__attribute__((used)) static HWND create_status_control(DWORD style, DWORD exstyle)
{
    HWND hWndStatus;


    hWndStatus = CreateWindowExA(exstyle, STATUSCLASSNAMEA, ((void*)0), style,

        0, 0, 300, 20,

        ((void*)0), ((void*)0), hinst, ((void*)0));
    ok(hWndStatus != ((void*)0), "failed to create status wnd\n");
    return hWndStatus;
}
