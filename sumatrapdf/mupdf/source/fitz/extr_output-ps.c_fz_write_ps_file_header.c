
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*) ;

void
fz_write_ps_file_header(fz_context *ctx, fz_output *out)
{
 fz_write_printf(ctx, out,
  "%%!PS-Adobe-3.0\n"


  "%%%%Creator: MuPDF\n"
  "%%%%LanguageLevel: 2\n"
  "%%%%CreationDate: D:20160318101706Z00'00'\n"
  "%%%%DocumentData: Binary\n"
  "%%%%Pages: (atend)\n"
  "%%%%EndComments\n"
  "\n"
  "%%%%BeginProlog\n"
  "%%%%EndProlog\n"
  "\n"
  "%%%%BeginSetup\n"
  "%%%%EndSetup\n"
  "\n"
  );
}
