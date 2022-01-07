
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int EM_LINESCROLL ;
 int SendMessageA (int ,int ,int ,int) ;

__attribute__((used)) static void line_scroll(HWND hwnd, int amount)
{
  SendMessageA(hwnd, EM_LINESCROLL, 0, amount);
}
