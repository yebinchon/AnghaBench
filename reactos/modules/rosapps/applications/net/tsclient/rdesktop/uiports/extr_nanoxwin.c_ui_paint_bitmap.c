
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 void* ui_create_bitmap (int,int,int *) ;
 int ui_destroy_bitmap (void*) ;
 int ui_memblt (int,int,int,int,int,void*,int ,int ) ;

void ui_paint_bitmap(int x, int y, int cx, int cy,
                     int width, int height, uint8 * data)
{
  void * b;

  b = ui_create_bitmap(width, height, data);
  ui_memblt(12, x, y, cx, cy, b, 0, 0);
  ui_destroy_bitmap(b);
}
