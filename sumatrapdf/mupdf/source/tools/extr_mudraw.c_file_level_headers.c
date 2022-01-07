
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ fz_pclm_options ;
typedef int fz_context ;


 scalar_t__ OUT_HTML ;
 scalar_t__ OUT_PCLM ;
 scalar_t__ OUT_PS ;
 scalar_t__ OUT_PWG ;
 scalar_t__ OUT_STEXT ;
 scalar_t__ OUT_TRACE ;
 scalar_t__ OUT_XHTML ;
 int bander ;
 int filename ;
 int fz_new_pclm_band_writer (int *,int ,TYPE_1__*) ;
 int fz_parse_pclm_options (int *,TYPE_1__*,char*) ;
 int fz_print_stext_header_as_html (int *,int ) ;
 int fz_print_stext_header_as_xhtml (int *,int ) ;
 int fz_write_printf (int *,int ,char*,...) ;
 int fz_write_ps_file_header (int *,int ) ;
 int fz_write_pwg_file_header (int *,int ) ;
 int out ;
 scalar_t__ output_format ;

__attribute__((used)) static void
file_level_headers(fz_context *ctx)
{
 if (output_format == OUT_STEXT || output_format == OUT_TRACE)
  fz_write_printf(ctx, out, "<?xml version=\"1.0\"?>\n");

 if (output_format == OUT_HTML)
  fz_print_stext_header_as_html(ctx, out);
 if (output_format == OUT_XHTML)
  fz_print_stext_header_as_xhtml(ctx, out);

 if (output_format == OUT_STEXT || output_format == OUT_TRACE)
  fz_write_printf(ctx, out, "<document name=\"%s\">\n", filename);

 if (output_format == OUT_PS)
  fz_write_ps_file_header(ctx, out);

 if (output_format == OUT_PWG)
  fz_write_pwg_file_header(ctx, out);

 if (output_format == OUT_PCLM)
 {
  fz_pclm_options opts = { 0 };
  fz_parse_pclm_options(ctx, &opts, "compression=flate");
  bander = fz_new_pclm_band_writer(ctx, out, &opts);
 }
}
