
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int out; int pdf; int resources; int contents; } ;
typedef TYPE_1__ pdf_writer ;
typedef int fz_document_writer ;
typedef int fz_context ;


 int fz_drop_buffer (int *,int ) ;
 int fz_drop_output (int *,int ) ;
 int pdf_drop_document (int *,int ) ;
 int pdf_drop_obj (int *,int ) ;

__attribute__((used)) static void
pdf_writer_drop_writer(fz_context *ctx, fz_document_writer *wri_)
{
 pdf_writer *wri = (pdf_writer*)wri_;
 fz_drop_buffer(ctx, wri->contents);
 pdf_drop_obj(ctx, wri->resources);
 pdf_drop_document(ctx, wri->pdf);
 fz_drop_output(ctx, wri->out);
}
