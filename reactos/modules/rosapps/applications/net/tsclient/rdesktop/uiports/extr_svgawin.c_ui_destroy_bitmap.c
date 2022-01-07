
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* data; } ;
typedef TYPE_1__ bitmap ;


 int xfree (TYPE_1__*) ;

void ui_destroy_bitmap(void* bmp)
{
  bitmap* b;

  b = (bitmap*)bmp;
  xfree(b->data);
  xfree(b);
}
