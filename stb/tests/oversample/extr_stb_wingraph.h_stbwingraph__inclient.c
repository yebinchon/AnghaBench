
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_client; scalar_t__ hide_mouse; } ;
typedef TYPE_1__ stbwingraph__window ;


 int ShowCursor (int) ;

__attribute__((used)) static void stbwingraph__inclient(stbwingraph__window *win, int state)
{
   if (state != win->in_client) {
      win->in_client = state;
      if (win->hide_mouse)
         ShowCursor(!state);
   }
}
