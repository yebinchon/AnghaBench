
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xps_resource ;
struct TYPE_5__ {int * dev; } ;
typedef TYPE_1__ xps_document ;
typedef int fz_xml ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_clip_path (int *,int *,int *,int,int ,int ) ;
 int fz_drop_path (int *,int *) ;
 int fz_infinite_rect ;
 int * fz_new_path (int *) ;
 int * xps_parse_abbreviated_geometry (int *,TYPE_1__*,char*,int*) ;
 int * xps_parse_path_geometry (int *,TYPE_1__*,int *,int *,int ,int*) ;

void
xps_clip(fz_context *ctx, xps_document *doc, fz_matrix ctm, xps_resource *dict, char *clip_att, fz_xml *clip_tag)
{
 fz_device *dev = doc->dev;
 fz_path *path;
 int fill_rule = 0;

 if (clip_att)
  path = xps_parse_abbreviated_geometry(ctx, doc, clip_att, &fill_rule);
 else if (clip_tag)
  path = xps_parse_path_geometry(ctx, doc, dict, clip_tag, 0, &fill_rule);
 else
  path = fz_new_path(ctx);
 fz_clip_path(ctx, dev, path, fill_rule == 0, ctm, fz_infinite_rect);
 fz_drop_path(ctx, path);
}
