
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int out; int opts; int pdf; } ;
typedef TYPE_1__ pdf_writer ;
typedef int fz_document_writer ;
typedef int fz_context ;


 int fz_close_output (int *,int ) ;
 int pdf_write_document (int *,int ,int ,int *) ;

__attribute__((used)) static void
pdf_writer_close_writer(fz_context *ctx, fz_document_writer *wri_)
{
 pdf_writer *wri = (pdf_writer*)wri_;
 pdf_write_document(ctx, wri->pdf, wri->out, &wri->opts);
 fz_close_output(ctx, wri->out);
}
