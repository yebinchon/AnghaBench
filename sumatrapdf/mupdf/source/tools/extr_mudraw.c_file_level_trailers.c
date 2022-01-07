
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 scalar_t__ OUT_HTML ;
 scalar_t__ OUT_PCLM ;
 scalar_t__ OUT_PS ;
 scalar_t__ OUT_STEXT ;
 scalar_t__ OUT_TRACE ;
 scalar_t__ OUT_XHTML ;
 int bander ;
 int fz_drop_band_writer (int *,int ) ;
 int fz_print_stext_trailer_as_html (int *,int ) ;
 int fz_print_stext_trailer_as_xhtml (int *,int ) ;
 int fz_write_printf (int *,int ,char*) ;
 int fz_write_ps_file_trailer (int *,int ,int ) ;
 int out ;
 scalar_t__ output_format ;
 int output_pagenum ;

__attribute__((used)) static void
file_level_trailers(fz_context *ctx)
{
 if (output_format == OUT_STEXT || output_format == OUT_TRACE)
  fz_write_printf(ctx, out, "</document>\n");

 if (output_format == OUT_HTML)
  fz_print_stext_trailer_as_html(ctx, out);
 if (output_format == OUT_XHTML)
  fz_print_stext_trailer_as_xhtml(ctx, out);

 if (output_format == OUT_PS)
  fz_write_ps_file_trailer(ctx, out, output_pagenum);

 if (output_format == OUT_PCLM)
  fz_drop_band_writer(ctx, bander);
}
