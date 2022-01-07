
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int h; } ;


 int annotate_w ;
 int glutReshapeWindow (int,int) ;
 scalar_t__ isfullscreen ;
 int outline_w ;
 TYPE_1__ page_tex ;
 int screen_h ;
 int screen_w ;
 scalar_t__ showannotate ;
 scalar_t__ showoutline ;
 int toggle_fullscreen () ;

__attribute__((used)) static void shrinkwrap(void)
{
 int w = page_tex.w + (showoutline ? outline_w + 4 : 0) + (showannotate ? annotate_w : 0);
 int h = page_tex.h;
 if (screen_w > 0 && w > screen_w)
  w = screen_w;
 if (screen_h > 0 && h > screen_h)
  h = screen_h;
 if (isfullscreen)
  toggle_fullscreen();
 glutReshapeWindow(w, h);
}
