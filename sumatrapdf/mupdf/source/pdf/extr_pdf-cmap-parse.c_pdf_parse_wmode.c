
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pdf_token ;
struct TYPE_4__ {int i; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int pdf_cmap ;
typedef int fz_stream ;
typedef int fz_context ;


 scalar_t__ PDF_TOK_INT ;
 int fz_warn (int *,char*) ;
 scalar_t__ pdf_lex (int *,int *,TYPE_1__*) ;
 int pdf_set_cmap_wmode (int *,int *,int ) ;

__attribute__((used)) static void
pdf_parse_wmode(fz_context *ctx, pdf_cmap *cmap, fz_stream *file, pdf_lexbuf *buf)
{
 pdf_token tok;

 tok = pdf_lex(ctx, file, buf);

 if (tok == PDF_TOK_INT)
  pdf_set_cmap_wmode(ctx, cmap, buf->i);
 else
  fz_warn(ctx, "expected integer after WMode in cmap");
}
