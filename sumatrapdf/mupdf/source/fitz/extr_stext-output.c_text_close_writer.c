
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int format; int out; } ;
typedef TYPE_1__ fz_text_writer ;
typedef int fz_document_writer ;
typedef int fz_context ;





 int fz_close_output (int *,int ) ;
 int fz_print_stext_trailer_as_html (int *,int ) ;
 int fz_print_stext_trailer_as_xhtml (int *,int ) ;
 int fz_write_string (int *,int ,char*) ;

__attribute__((used)) static void
text_close_writer(fz_context *ctx, fz_document_writer *wri_)
{
 fz_text_writer *wri = (fz_text_writer*)wri_;
 switch (wri->format)
 {
 case 130:
  fz_print_stext_trailer_as_html(ctx, wri->out);
  break;
 case 128:
  fz_print_stext_trailer_as_xhtml(ctx, wri->out);
  break;
 case 129:
  fz_write_string(ctx, wri->out, "</document>\n");
  break;
 }
 fz_close_output(ctx, wri->out);
}
