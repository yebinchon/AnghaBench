
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int* palette; } ;


 int COLOUR_FLAG_256 ;

int
window_pane_get_palette(struct window_pane *wp, int c)
{
 int new;

 if (wp == ((void*)0) || wp->palette == ((void*)0))
  return (-1);

 new = -1;
 if (c < 8)
  new = wp->palette[c];
 else if (c >= 90 && c <= 97)
  new = wp->palette[8 + c - 90];
 else if (c & COLOUR_FLAG_256)
  new = wp->palette[c & ~COLOUR_FLAG_256];
 if (new == 0)
  return (-1);
 return (new);
}
