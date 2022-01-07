
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xps_resource ;
struct TYPE_5__ {int opacity_top; float* opacity; int * dev; } ;
typedef TYPE_1__ xps_document ;
typedef int fz_xml ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int FZ_MAX_COLORS ;
 float fz_atof (char*) ;
 int fz_begin_mask (int *,int *,int ,int ,int *,int *,int ) ;
 int fz_default_color_params ;
 int fz_end_mask (int *,int *) ;
 char* fz_xml_att (int *,char*) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 scalar_t__ nelem (float*) ;
 int xps_parse_brush (int *,TYPE_1__*,int ,int ,char*,int *,int *) ;
 int xps_parse_color (int *,TYPE_1__*,char*,char*,int **,float*) ;

void
xps_begin_opacity(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area,
 char *base_uri, xps_resource *dict,
 char *opacity_att, fz_xml *opacity_mask_tag)
{
 fz_device *dev = doc->dev;
 float opacity;

 if (!opacity_att && !opacity_mask_tag)
  return;

 opacity = 1;
 if (opacity_att)
  opacity = fz_atof(opacity_att);

 if (fz_xml_is_tag(opacity_mask_tag, "SolidColorBrush"))
 {
  char *scb_opacity_att = fz_xml_att(opacity_mask_tag, "Opacity");
  char *scb_color_att = fz_xml_att(opacity_mask_tag, "Color");
  if (scb_opacity_att)
   opacity = opacity * fz_atof(scb_opacity_att);
  if (scb_color_att)
  {
   fz_colorspace *colorspace;
   float samples[FZ_MAX_COLORS];
   xps_parse_color(ctx, doc, base_uri, scb_color_att, &colorspace, samples);
   opacity = opacity * samples[0];
  }
  opacity_mask_tag = ((void*)0);
 }

 if (doc->opacity_top + 1 < (int)nelem(doc->opacity))
 {
  doc->opacity[doc->opacity_top + 1] = doc->opacity[doc->opacity_top] * opacity;
  doc->opacity_top++;
 }

 if (opacity_mask_tag)
 {
  fz_begin_mask(ctx, dev, area, 0, ((void*)0), ((void*)0), fz_default_color_params);
  xps_parse_brush(ctx, doc, ctm, area, base_uri, dict, opacity_mask_tag);
  fz_end_mask(ctx, dev);
 }
}
