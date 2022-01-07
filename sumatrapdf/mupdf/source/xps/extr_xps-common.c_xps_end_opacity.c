
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xps_resource ;
struct TYPE_3__ {scalar_t__ opacity_top; int * dev; } ;
typedef TYPE_1__ xps_document ;
typedef int fz_xml ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_pop_clip (int *,int *) ;
 int fz_xml_is_tag (int *,char*) ;

void
xps_end_opacity(fz_context *ctx, xps_document *doc, char *base_uri, xps_resource *dict,
 char *opacity_att, fz_xml *opacity_mask_tag)
{
 fz_device *dev = doc->dev;

 if (!opacity_att && !opacity_mask_tag)
  return;

 if (doc->opacity_top > 0)
  doc->opacity_top--;

 if (opacity_mask_tag)
 {
  if (!fz_xml_is_tag(opacity_mask_tag, "SolidColorBrush"))
   fz_pop_clip(ctx, dev);
 }
}
