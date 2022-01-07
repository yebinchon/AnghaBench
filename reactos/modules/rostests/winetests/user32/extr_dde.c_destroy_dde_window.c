
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int HWND ;


 int DestroyWindow (int ) ;
 int GetModuleHandleA (int *) ;
 int UnregisterClassA (int ,int ) ;

__attribute__((used)) static void destroy_dde_window(HWND *hwnd, LPCSTR name)
{
    DestroyWindow(*hwnd);
    UnregisterClassA(name, GetModuleHandleA(((void*)0)));
}
