
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPCWSTR ;
typedef int HWND ;
typedef int HINSTANCE ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 int PtrToUlong (int ) ;
 int ShellExecuteW (int ,int *,int ,int *,int *,int ) ;
 int TRUE ;
 int display_error (int ,int ) ;

__attribute__((used)) static BOOL launch_file(HWND hwnd, LPCWSTR cmd, UINT nCmdShow)
{
 HINSTANCE hinst = ShellExecuteW(hwnd, ((void*)0) , cmd, ((void*)0) , ((void*)0) , nCmdShow);

 if (PtrToUlong(hinst) <= 32) {
  display_error(hwnd, GetLastError());
  return FALSE;
 }

 return TRUE;
}
