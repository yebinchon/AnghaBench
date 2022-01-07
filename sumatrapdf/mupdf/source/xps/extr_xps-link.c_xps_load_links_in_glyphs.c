
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_resource ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_text ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_link ;
typedef int fz_font ;
typedef int fz_context ;


 int atoi (char*) ;
 int fz_atof (char*) ;
 int fz_bound_text (int *,int *,int *,int ) ;
 int fz_drop_font (int *,int *) ;
 int fz_drop_text (int *,int *) ;
 char* fz_xml_att (int *,char*) ;
 int * fz_xml_down (int ) ;
 int fz_xml_find_down (int *,char*) ;
 int strcmp (char*,char*) ;
 int xps_add_link (int *,int *,int ,char*,char*,int **) ;
 int * xps_lookup_font (int *,int *,char*,char*,char*) ;
 int * xps_parse_glyphs_imp (int *,int *,int ,int *,int ,int ,int ,int,int,char*,char*) ;
 int xps_parse_transform (int *,int *,char*,int *,int ) ;
 int xps_resolve_resource_reference (int *,int *,int *,char**,int **,int *) ;

__attribute__((used)) static void
xps_load_links_in_glyphs(fz_context *ctx, xps_document *doc, fz_matrix ctm,
  char *base_uri, xps_resource *dict, fz_xml *root, fz_link **link)
{
 char *navigate_uri_att = fz_xml_att(root, "FixedPage.NavigateUri");
 if (navigate_uri_att)
 {
  char *transform_att = fz_xml_att(root, "RenderTransform");
  fz_xml *transform_tag = fz_xml_down(fz_xml_find_down(root, "Path.RenderTransform"));

  char *bidi_level_att = fz_xml_att(root, "BidiLevel");
  char *font_size_att = fz_xml_att(root, "FontRenderingEmSize");
  char *font_uri_att = fz_xml_att(root, "FontUri");
  char *origin_x_att = fz_xml_att(root, "OriginX");
  char *origin_y_att = fz_xml_att(root, "OriginY");
  char *is_sideways_att = fz_xml_att(root, "IsSideways");
  char *indices_att = fz_xml_att(root, "Indices");
  char *unicode_att = fz_xml_att(root, "UnicodeString");
  char *style_att = fz_xml_att(root, "StyleSimulations");

  int is_sideways = 0;
  int bidi_level = 0;
  fz_font *font;
  fz_text *text;
  fz_rect area;

  xps_resolve_resource_reference(ctx, doc, dict, &transform_att, &transform_tag, ((void*)0));

  ctm = xps_parse_transform(ctx, doc, transform_att, transform_tag, ctm);

  if (is_sideways_att)
   is_sideways = !strcmp(is_sideways_att, "true");
  if (bidi_level_att)
   bidi_level = atoi(bidi_level_att);

  font = xps_lookup_font(ctx, doc, base_uri, font_uri_att, style_att);
  if (!font)
   return;
  text = xps_parse_glyphs_imp(ctx, doc, ctm, font, fz_atof(font_size_att),
    fz_atof(origin_x_att), fz_atof(origin_y_att),
    is_sideways, bidi_level, indices_att, unicode_att);
  area = fz_bound_text(ctx, text, ((void*)0), ctm);
  fz_drop_text(ctx, text);
  fz_drop_font(ctx, font);

  xps_add_link(ctx, doc, area, base_uri, navigate_uri_att, link);
 }
}
