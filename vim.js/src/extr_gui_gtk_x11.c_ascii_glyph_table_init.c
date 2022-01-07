
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef char char_u ;
typedef int ascii_chars ;
struct TYPE_19__ {int num_glyphs; TYPE_1__* glyphs; } ;
struct TYPE_18__ {int * font; int shape_engine; } ;
struct TYPE_17__ {scalar_t__ data; int * next; } ;
struct TYPE_16__ {int x_offset; int width; } ;
struct TYPE_15__ {TYPE_5__ analysis; } ;
struct TYPE_14__ {TYPE_3__ geometry; } ;
struct TYPE_13__ {int char_width; TYPE_6__* ascii_glyphs; int * ascii_font; int text_context; } ;
typedef TYPE_2__ PangoItem ;
typedef TYPE_3__ PangoGlyphGeometry ;
typedef int PangoAttrList ;
typedef TYPE_4__ GList ;
typedef int GFunc ;


 int MAX (int ,int) ;
 int PANGO_SCALE ;
 int default_shape_engine ;
 int g_list_foreach (TYPE_4__*,int ,int *) ;
 int g_list_free (TYPE_4__*) ;
 int g_object_ref (int *) ;
 int g_object_unref (int *) ;
 int g_return_if_fail (int) ;
 TYPE_10__ gui ;
 int * pango_attr_list_new () ;
 int pango_attr_list_unref (int *) ;
 int pango_glyph_string_free (TYPE_6__*) ;
 TYPE_6__* pango_glyph_string_new () ;
 int pango_item_free ;
 TYPE_4__* pango_itemize (int ,char const*,int ,int,int *,int *) ;
 int pango_shape (char const*,int,TYPE_5__*,TYPE_6__*) ;

__attribute__((used)) static void
ascii_glyph_table_init(void)
{
    char_u ascii_chars[128];
    PangoAttrList *attr_list;
    GList *item_list;
    int i;

    if (gui.ascii_glyphs != ((void*)0))
 pango_glyph_string_free(gui.ascii_glyphs);
    if (gui.ascii_font != ((void*)0))
 g_object_unref(gui.ascii_font);

    gui.ascii_glyphs = ((void*)0);
    gui.ascii_font = ((void*)0);


    for (i = 0; i < 32; ++i)
 ascii_chars[i] = '?';
    for (; i < 127; ++i)
 ascii_chars[i] = i;
    ascii_chars[i] = '?';

    attr_list = pango_attr_list_new();
    item_list = pango_itemize(gui.text_context, (const char *)ascii_chars,
         0, sizeof(ascii_chars), attr_list, ((void*)0));

    if (item_list != ((void*)0) && item_list->next == ((void*)0))
    {
 PangoItem *item;
 int width;

 item = (PangoItem *)item_list->data;
 width = gui.char_width * PANGO_SCALE;


 default_shape_engine = item->analysis.shape_engine;

 gui.ascii_font = item->analysis.font;
 g_object_ref(gui.ascii_font);

 gui.ascii_glyphs = pango_glyph_string_new();

 pango_shape((const char *)ascii_chars, sizeof(ascii_chars),
      &item->analysis, gui.ascii_glyphs);

 g_return_if_fail(gui.ascii_glyphs->num_glyphs == sizeof(ascii_chars));

 for (i = 0; i < gui.ascii_glyphs->num_glyphs; ++i)
 {
     PangoGlyphGeometry *geom;

     geom = &gui.ascii_glyphs->glyphs[i].geometry;
     geom->x_offset += MAX(0, width - geom->width) / 2;
     geom->width = width;
 }
    }

    g_list_foreach(item_list, (GFunc)&pango_item_free, ((void*)0));
    g_list_free(item_list);
    pango_attr_list_unref(attr_list);
}
