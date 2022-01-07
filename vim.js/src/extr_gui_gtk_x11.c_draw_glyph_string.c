
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int char_width; int text_gc; TYPE_1__* drawarea; int font_can_bold; int fgcolor; int char_height; int bgcolor; } ;
struct TYPE_3__ {int window; } ;
typedef int PangoGlyphString ;
typedef int PangoFont ;


 int DRAW_BOLD ;
 int DRAW_TRANSP ;
 int FILL_X (int) ;
 int FILL_Y (int) ;
 scalar_t__ TEXT_X (int) ;
 int TEXT_Y (int) ;
 int TRUE ;
 int gdk_draw_glyphs (int ,int ,int *,scalar_t__,int ,int *) ;
 int gdk_draw_rectangle (int ,int ,int ,int ,int ,int,int ) ;
 int gdk_gc_set_foreground (int ,int ) ;
 TYPE_2__ gui ;

__attribute__((used)) static void
draw_glyph_string(int row, int col, int num_cells, int flags,
    PangoFont *font, PangoGlyphString *glyphs)
{
    if (!(flags & DRAW_TRANSP))
    {
 gdk_gc_set_foreground(gui.text_gc, gui.bgcolor);

 gdk_draw_rectangle(gui.drawarea->window,
      gui.text_gc,
      TRUE,
      FILL_X(col),
      FILL_Y(row),
      num_cells * gui.char_width,
      gui.char_height);
    }

    gdk_gc_set_foreground(gui.text_gc, gui.fgcolor);

    gdk_draw_glyphs(gui.drawarea->window,
      gui.text_gc,
      font,
      TEXT_X(col),
      TEXT_Y(row),
      glyphs);


    if ((flags & DRAW_BOLD) && !gui.font_can_bold)
 gdk_draw_glyphs(gui.drawarea->window,
   gui.text_gc,
   font,
   TEXT_X(col) + 1,
   TEXT_Y(row),
   glyphs);
}
