
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int UINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int DefWindowProcA (int ,int ,int ,int ) ;
 int DefWindowProcW (int ,int ,int ,int ) ;

__attribute__((used)) static inline LRESULT DefWindowProcT(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam, BOOL unicode)
{
 if(unicode)
  return DefWindowProcW(hwnd, msg, wParam, lParam);
 else
  return DefWindowProcA(hwnd, msg, wParam, lParam);
}
