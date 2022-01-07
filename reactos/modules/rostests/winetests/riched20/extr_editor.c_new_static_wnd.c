
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int new_window (char*,int ,int ) ;

__attribute__((used)) static HWND new_static_wnd(HWND parent) {
  return new_window("Static", 0, parent);
}
