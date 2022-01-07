
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hDC; } ;
struct TYPE_5__ {int * font_cache; } ;
typedef TYPE_1__ ME_Style ;
typedef TYPE_2__ ME_Context ;
typedef int HFONT ;


 int SelectObject (int ,int ) ;
 int release_font_cache (int *) ;

void ME_UnselectStyleFont(ME_Context *c, ME_Style *s, HFONT hOldFont)
{
  SelectObject(c->hDC, hOldFont);
  release_font_cache(s->font_cache);
  s->font_cache = ((void*)0);
}
