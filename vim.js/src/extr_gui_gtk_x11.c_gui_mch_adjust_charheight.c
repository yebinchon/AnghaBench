
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int char_height; int char_ascent; int text_context; int norm_font; } ;
typedef int PangoFontMetrics ;


 void* MAX (int,int) ;
 int OK ;
 int PANGO_PIXELS (int) ;
 int PANGO_SCALE ;
 TYPE_1__ gui ;
 int p_linespace ;
 int pango_context_get_language (int ) ;
 int * pango_context_get_metrics (int ,int ,int ) ;
 int pango_font_metrics_get_ascent (int *) ;
 int pango_font_metrics_get_descent (int *) ;
 int pango_font_metrics_unref (int *) ;

int
gui_mch_adjust_charheight(void)
{
    PangoFontMetrics *metrics;
    int ascent;
    int descent;

    metrics = pango_context_get_metrics(gui.text_context, gui.norm_font,
    pango_context_get_language(gui.text_context));
    ascent = pango_font_metrics_get_ascent(metrics);
    descent = pango_font_metrics_get_descent(metrics);

    pango_font_metrics_unref(metrics);

    gui.char_height = (ascent + descent + PANGO_SCALE - 1) / PANGO_SCALE
        + p_linespace;

    gui.char_ascent = PANGO_PIXELS(ascent + p_linespace * PANGO_SCALE / 2);



    gui.char_ascent = MAX(gui.char_ascent, 0);
    gui.char_height = MAX(gui.char_height, gui.char_ascent + 1);

    return OK;
}
