
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_14__ {int num_glyphs; int* log_clusters; TYPE_4__* glyphs; } ;
struct TYPE_11__ {int font; } ;
struct TYPE_13__ {int offset; int length; TYPE_3__ analysis; } ;
struct TYPE_10__ {int width; } ;
struct TYPE_9__ {scalar_t__ is_cluster_start; } ;
struct TYPE_12__ {int glyph; TYPE_2__ geometry; TYPE_1__ attr; } ;
typedef int PangoRectangle ;
typedef TYPE_5__ PangoItem ;
typedef TYPE_6__ PangoGlyphString ;


 int PANGO_RBEARING (int ) ;
 int pango_font_get_glyph_extents (int ,int ,int *,int *) ;
 int utf_byte2len (int ) ;
 scalar_t__ utf_char2cells (int) ;
 int utf_iscomposing (int) ;
 int utf_ptr2char (int *) ;

__attribute__((used)) static int
count_cluster_cells(char_u *s, PangoItem *item,
      PangoGlyphString* glyphs, int i,
      int *cluster_width,
      int *last_glyph_rbearing)
{
    char_u *p;
    int next;
    int start, end;
    int width;
    int uc;
    int cellcount = 0;

    width = glyphs->glyphs[i].geometry.width;

    for (next = i + 1; next < glyphs->num_glyphs; ++next)
    {
 if (glyphs->glyphs[next].attr.is_cluster_start)
     break;
 else if (glyphs->glyphs[next].geometry.width > width)
     width = glyphs->glyphs[next].geometry.width;
    }

    start = item->offset + glyphs->log_clusters[i];
    end = item->offset + ((next < glyphs->num_glyphs) ?
       glyphs->log_clusters[next] : item->length);

    for (p = s + start; p < s + end; p += utf_byte2len(*p))
    {
 uc = utf_ptr2char(p);
 if (uc < 0x80)
     ++cellcount;
 else if (!utf_iscomposing(uc))
     cellcount += utf_char2cells(uc);
    }

    if (last_glyph_rbearing != ((void*)0)
     && cellcount > 0 && next == glyphs->num_glyphs)
    {
 PangoRectangle ink_rect;





 pango_font_get_glyph_extents(item->analysis.font,
         glyphs->glyphs[i].glyph,
         &ink_rect, ((void*)0));

 if (PANGO_RBEARING(ink_rect) > 0)
     *last_glyph_rbearing = PANGO_RBEARING(ink_rect);
    }

    if (cellcount > 0)
 *cluster_width = width;

    return cellcount;
}
