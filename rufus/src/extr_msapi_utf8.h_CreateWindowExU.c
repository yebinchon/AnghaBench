
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int * HWND ;
typedef int HMENU ;
typedef int HINSTANCE ;
typedef int DWORD ;


 int * CreateWindowExW (int ,int ,int ,int ,int,int,int,int,int *,int ,int ,int ) ;
 int ERROR_INVALID_DATA ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int wconvert (char*) ;
 int wfree (char*) ;
 int wlpClassName ;
 int wlpWindowName ;

__attribute__((used)) static __inline HWND CreateWindowExU(DWORD dwExStyle, char* lpClassName, char* lpWindowName,
 DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HMENU hMenu,
 HINSTANCE hInstance, LPVOID lpParam)
{
 HWND ret = ((void*)0);
 DWORD err = ERROR_INVALID_DATA;
 wconvert(lpClassName);
 wconvert(lpWindowName);
 ret = CreateWindowExW(dwExStyle, wlpClassName, wlpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam);
 err = GetLastError();
 wfree(lpClassName);
 wfree(lpWindowName);
 SetLastError(err);
 return ret;
}
