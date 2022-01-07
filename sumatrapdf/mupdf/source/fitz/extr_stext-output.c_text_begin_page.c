
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opts; int * page; int number; } ;
typedef TYPE_1__ fz_text_writer ;
typedef int fz_rect ;
typedef int fz_document_writer ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_drop_stext_page (int *,int *) ;
 int * fz_new_stext_device (int *,int *,int *) ;
 int * fz_new_stext_page (int *,int ) ;

__attribute__((used)) static fz_device *
text_begin_page(fz_context *ctx, fz_document_writer *wri_, fz_rect mediabox)
{
 fz_text_writer *wri = (fz_text_writer*)wri_;

 if (wri->page)
 {
  fz_drop_stext_page(ctx, wri->page);
  wri->page = ((void*)0);
 }

 wri->number++;

 wri->page = fz_new_stext_page(ctx, mediabox);
 return fz_new_stext_device(ctx, wri->page, &wri->opts);
}
