
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_rect ;
struct TYPE_2__ {int pixmap; int options; } ;
typedef TYPE_1__ fz_pixmap_writer ;
typedef int fz_document_writer ;
typedef int fz_device ;
typedef int fz_context ;


 int * fz_new_draw_device_with_options (int *,int *,int ,int *) ;

__attribute__((used)) static fz_device *
pixmap_begin_page(fz_context *ctx, fz_document_writer *wri_, fz_rect mediabox)
{
 fz_pixmap_writer *wri = (fz_pixmap_writer*)wri_;
 return fz_new_draw_device_with_options(ctx, &wri->options, mediabox, &wri->pixmap);
}
