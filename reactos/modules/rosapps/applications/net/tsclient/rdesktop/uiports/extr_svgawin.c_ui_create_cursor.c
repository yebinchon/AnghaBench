
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int w; int h; unsigned int x; unsigned int y; int xormask; int andmask; } ;
typedef TYPE_1__ tcursor ;


 scalar_t__ is_pixel_on (int *,int,int,int,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int set_pixel_on (int ,int,int,int,int,int) ;
 scalar_t__ xmalloc (int) ;

void* ui_create_cursor(unsigned int x, unsigned int y,
                       int width, int height,
                       uint8* andmask, uint8* xormask)
{
  tcursor* c;
  int i;
  int j;

  c = (tcursor*)xmalloc(sizeof(tcursor));
  memset(c, 0, sizeof(tcursor));
  c->w = width;
  c->h = height;
  c->x = x;
  c->y = y;
  for (i = 0; i < 32; i++)
  {
    for (j = 0; j < 32; j++)
    {
      if (is_pixel_on(andmask, j, i, 32, 1))
        set_pixel_on(c->andmask, j, 31 - i, 32, 8, 255);
      if (is_pixel_on(xormask, j, i, 32, 24))
        set_pixel_on(c->xormask, j, 31 - i, 32, 8, 255);
    }
  }
  return (void*)c;
}
