
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int out; int page; } ;
typedef TYPE_1__ fz_text_writer ;
typedef int fz_document_writer ;
typedef int fz_context ;


 int fz_drop_output (int *,int ) ;
 int fz_drop_stext_page (int *,int ) ;

__attribute__((used)) static void
text_drop_writer(fz_context *ctx, fz_document_writer *wri_)
{
 fz_text_writer *wri = (fz_text_writer*)wri_;
 fz_drop_stext_page(ctx, wri->page);
 fz_drop_output(ctx, wri->out);
}
