
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int shift; int ctrl; int alt; int key; scalar_t__ dy; scalar_t__ dx; int my; int mx; } ;
typedef TYPE_1__ stbwingraph_event ;
struct TYPE_6__ {int my; int mx; } ;
typedef TYPE_2__ stbwingraph__window ;
typedef int WPARAM ;
typedef int LPARAM ;


 scalar_t__ GetKeyState (int ) ;
 int MK_CONTROL ;
 int MK_SHIFT ;
 int VK_MENU ;

__attribute__((used)) static void stbwingraph__mousewheel(stbwingraph_event *e, int type, WPARAM wparam, LPARAM lparam, int capture, void *wnd, stbwingraph__window *z)
{

   static int captured = 0;
   e->type = type;
   if (z) {
      e->mx = z->mx;
      e->my = z->my;
   }
   e->dx = e->dy = 0;
   e->shift = (wparam & MK_SHIFT) != 0;
   e->ctrl = (wparam & MK_CONTROL) != 0;
   e->alt = (GetKeyState(VK_MENU) < 0);
   e->key = ((int) wparam >> 16);
}
