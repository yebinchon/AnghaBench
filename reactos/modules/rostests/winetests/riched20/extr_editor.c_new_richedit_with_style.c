
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 int RICHEDIT_CLASS20A ;
 int new_window (int ,int ,int ) ;

__attribute__((used)) static HWND new_richedit_with_style(HWND parent, DWORD style) {
  return new_window(RICHEDIT_CLASS20A, style, parent);
}
