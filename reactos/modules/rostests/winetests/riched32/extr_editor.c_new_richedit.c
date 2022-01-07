
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int ES_MULTILINE ;
 int RICHEDIT_CLASS10A ;
 int new_window (int ,int ,int ) ;

__attribute__((used)) static HWND new_richedit(HWND parent) {
  return new_window(RICHEDIT_CLASS10A, ES_MULTILINE, parent);
}
