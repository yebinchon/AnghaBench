
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int cy; int cx; struct TYPE_4__* next; scalar_t__ y; int x; } ;
typedef TYPE_1__ myrect ;


 int g_server_Bpp ;
 int g_server_bpp ;
 int g_width ;
 int * get_ptr (int ,scalar_t__,int ,int,int ) ;
 TYPE_1__* head_rect ;
 int sdata ;
 int vga_drawscansegment (int *,int ,scalar_t__,int) ;
 int xfree (TYPE_1__*) ;

void draw_cache_rects(void)
{
  int i;
  myrect* rect;
  myrect* rect1;
  uint8* p;


  rect = head_rect;
  while (rect != 0)
  {
    p = get_ptr(rect->x, rect->y, sdata, g_width, g_server_bpp);
    for (i = 0; i < rect->cy; i++)
    {
      vga_drawscansegment(p, rect->x, rect->y + i, rect->cx * g_server_Bpp);
      p = p + g_width * g_server_Bpp;
    }
    rect1 = rect;
    rect = rect->next;
    xfree(rect1);
  }
  head_rect = 0;
}
