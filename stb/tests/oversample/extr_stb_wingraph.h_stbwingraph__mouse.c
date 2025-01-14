
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; short mx; short my; int dx; int dy; int shift; int ctrl; int alt; } ;
typedef TYPE_1__ stbwingraph_event ;
struct TYPE_6__ {int mx; int my; } ;
typedef TYPE_2__ stbwingraph__window ;
typedef int WPARAM ;
typedef int LPARAM ;


 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int MK_ALT ;
 int MK_CONTROL ;
 int MK_SHIFT ;
 int ReleaseCapture () ;
 int SetCapture (void*) ;

__attribute__((used)) static void stbwingraph__mouse(stbwingraph_event *e, int type, WPARAM wparam, LPARAM lparam, int capture, void *wnd, stbwingraph__window *z)
{
   static int captured = 0;
   e->type = type;
   e->mx = (short) LOWORD(lparam);
   e->my = (short) HIWORD(lparam);
   if (!z || z->mx == -(1 << 30)) {
      e->dx = e->dy = 0;
   } else {
      e->dx = e->mx - z->mx;
      e->dy = e->my - z->my;
   }
   e->shift = (wparam & MK_SHIFT) != 0;
   e->ctrl = (wparam & MK_CONTROL) != 0;
   e->alt = (wparam & MK_ALT) != 0;
   if (z) {
      z->mx = e->mx;
      z->my = e->my;
   }
   if (capture) {
      if (!captured && capture == 1)
         SetCapture(wnd);
      captured += capture;
      if (!captured && capture == -1)
         ReleaseCapture();
      if (captured < 0) captured = 0;
   }
}
