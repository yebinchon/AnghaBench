
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int * HWND ;
typedef int DWORD ;


 int * CreateWindowA (int ,int *,int,int ,int ,int,int,int *,int *,int ,int *) ;
 scalar_t__ GetLastError () ;
 int WS_HSCROLL ;
 int WS_POPUP ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;
 int hmoduleRichEdit ;
 int ok (int ,char*,int ,int) ;

__attribute__((used)) static HWND new_window(LPCSTR lpClassName, DWORD dwStyle, HWND parent)
{
  HWND hwnd = CreateWindowA(lpClassName, ((void*)0),
                            dwStyle | WS_POPUP | WS_HSCROLL | WS_VSCROLL | WS_VISIBLE,
                            0, 0, 200, 60, parent, ((void*)0), hmoduleRichEdit, ((void*)0));
  ok(hwnd != ((void*)0), "class: %s, error: %d\n", lpClassName, (int) GetLastError());
  return hwnd;
}
