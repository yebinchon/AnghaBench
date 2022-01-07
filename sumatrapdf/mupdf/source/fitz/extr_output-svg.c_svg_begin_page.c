
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int id; int reuse_images; int text_format; int out; int path; } ;
typedef TYPE_1__ fz_svg_writer ;
struct TYPE_5__ {float x1; float x0; float y1; float y0; } ;
typedef TYPE_2__ fz_rect ;
typedef int fz_document_writer ;
typedef int fz_device ;
typedef int fz_context ;


 int PATH_MAX ;
 int fz_format_output_path (int *,char*,int,int ,int) ;
 int fz_new_output_with_path (int *,char*,int ) ;
 int * fz_new_svg_device_with_id (int *,int ,float,float,int ,int ,int *) ;

__attribute__((used)) static fz_device *
svg_begin_page(fz_context *ctx, fz_document_writer *wri_, fz_rect mediabox)
{
 fz_svg_writer *wri = (fz_svg_writer*)wri_;
 char path[PATH_MAX];

 float w = mediabox.x1 - mediabox.x0;
 float h = mediabox.y1 - mediabox.y0;

 wri->count += 1;

 fz_format_output_path(ctx, path, sizeof path, wri->path, wri->count);
 wri->out = fz_new_output_with_path(ctx, path, 0);
 return fz_new_svg_device_with_id(ctx, wri->out, w, h, wri->text_format, wri->reuse_images, &wri->id);
}
