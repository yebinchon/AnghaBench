
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int contents; int resources; int mediabox; int pdf; } ;
typedef TYPE_1__ pdf_writer ;
typedef int fz_rect ;
typedef int fz_document_writer ;
typedef int fz_device ;
typedef int fz_context ;


 int * pdf_page_write (int *,int ,int ,int *,int *) ;

__attribute__((used)) static fz_device *
pdf_writer_begin_page(fz_context *ctx, fz_document_writer *wri_, fz_rect mediabox)
{
 pdf_writer *wri = (pdf_writer*)wri_;
 wri->mediabox = mediabox;
 return pdf_page_write(ctx, wri->pdf, wri->mediabox, &wri->resources, &wri->contents);
}
