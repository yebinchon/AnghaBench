
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cairo_t ;
struct TYPE_4__ {int message; } ;
typedef int PangoLayout ;
typedef int PangoFontDescription ;
typedef int PangoAttrList ;
typedef TYPE_1__ GError ;


 int SWAY_ERROR ;
 int free (char*) ;
 int g_error_free (TYPE_1__*) ;
 int pango_attr_list_insert (int *,int ) ;
 int * pango_attr_list_new () ;
 int pango_attr_list_unref (int *) ;
 int pango_attr_scale_new (double) ;
 int * pango_cairo_create_layout (int *) ;
 int pango_font_description_free (int *) ;
 int * pango_font_description_from_string (char const*) ;
 int pango_layout_set_attributes (int *,int *) ;
 int pango_layout_set_font_description (int *,int *) ;
 int pango_layout_set_single_paragraph_mode (int *,int) ;
 int pango_layout_set_text (int *,char const*,int) ;
 scalar_t__ pango_parse_markup (char const*,int,int ,int **,char**,int *,TYPE_1__**) ;
 int sway_log (int ,char*,char const*,int ) ;

PangoLayout *get_pango_layout(cairo_t *cairo, const char *font,
  const char *text, double scale, bool markup) {
 PangoLayout *layout = pango_cairo_create_layout(cairo);
 PangoAttrList *attrs;
 if (markup) {
  char *buf;
  GError *error = ((void*)0);
  if (pango_parse_markup(text, -1, 0, &attrs, &buf, ((void*)0), &error)) {
   pango_layout_set_text(layout, buf, -1);
   free(buf);
  } else {
   sway_log(SWAY_ERROR, "pango_parse_markup '%s' -> error %s", text,
     error->message);
   g_error_free(error);
   markup = 0;
  }
 }
 if (!markup) {
  attrs = pango_attr_list_new();
  pango_layout_set_text(layout, text, -1);
 }

 pango_attr_list_insert(attrs, pango_attr_scale_new(scale));
 PangoFontDescription *desc = pango_font_description_from_string(font);
 pango_layout_set_font_description(layout, desc);
 pango_layout_set_single_paragraph_mode(layout, 1);
 pango_layout_set_attributes(layout, attrs);
 pango_attr_list_unref(attrs);
 pango_font_description_free(desc);
 return layout;
}
