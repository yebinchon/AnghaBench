
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int ES_MULTILINE ;
 int RICHEDIT_CLASS20W ;
 int new_windowW (int ,int ,int ) ;

__attribute__((used)) static HWND new_richeditW(HWND parent) {
  return new_windowW(RICHEDIT_CLASS20W, ES_MULTILINE, parent);
}
