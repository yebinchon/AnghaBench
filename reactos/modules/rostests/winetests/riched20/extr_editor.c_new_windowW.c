
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int * HWND ;
typedef int DWORD ;


 int * CreateWindowW (int ,int *,int,int ,int ,int,int,int *,int *,int ,int *) ;
 scalar_t__ GetLastError () ;
 int WS_HSCROLL ;
 int WS_POPUP ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;
 int hmoduleRichEdit ;
 int ok (int ,char*,int ,int) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static HWND new_windowW(LPCWSTR lpClassName, DWORD dwStyle, HWND parent) {
  HWND hwnd;
  hwnd = CreateWindowW(lpClassName, ((void*)0), dwStyle|WS_POPUP|WS_HSCROLL|WS_VSCROLL
                      |WS_VISIBLE, 0, 0, 200, 60, parent, ((void*)0),
                      hmoduleRichEdit, ((void*)0));
  ok(hwnd != ((void*)0), "class: %s, error: %d\n", wine_dbgstr_w(lpClassName), (int) GetLastError());
  return hwnd;
}
