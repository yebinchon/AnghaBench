
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* data; } ;
typedef TYPE_1__ bitmap ;


 int xfree (TYPE_1__*) ;

void ui_destroy_glyph(void* glyph)
{
  bitmap* the_glyph;

  the_glyph = (bitmap*)glyph;
  if (the_glyph != ((void*)0))
  {
    if (the_glyph->data != ((void*)0))
      xfree(the_glyph->data);
    xfree(the_glyph);
  }
}
