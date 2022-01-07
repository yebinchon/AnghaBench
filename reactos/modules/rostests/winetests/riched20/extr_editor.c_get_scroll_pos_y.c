
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; int member_1; int x; int y; } ;
typedef TYPE_1__ POINT ;
typedef int LPARAM ;
typedef int HWND ;


 int EM_GETSCROLLPOS ;
 int SendMessageA (int ,int ,int ,int ) ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static int get_scroll_pos_y(HWND hwnd)
{
  POINT p = {-1, -1};
  SendMessageA(hwnd, EM_GETSCROLLPOS, 0, (LPARAM)&p);
  ok(p.x != -1 && p.y != -1, "p.x:%d p.y:%d\n", p.x, p.y);
  return p.y;
}
