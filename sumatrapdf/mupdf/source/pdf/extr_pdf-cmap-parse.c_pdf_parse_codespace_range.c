
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pdf_token ;
struct TYPE_4__ {int len; int scratch; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int pdf_cmap ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ PDF_TOK_KEYWORD ;
 scalar_t__ PDF_TOK_STRING ;
 int fz_throw (int *,int ,char*) ;
 int pdf_add_codespace (int *,int *,int,int,int ) ;
 int pdf_code_from_string (int ,int ) ;
 scalar_t__ pdf_lex (int *,int *,TYPE_1__*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void
pdf_parse_codespace_range(fz_context *ctx, pdf_cmap *cmap, fz_stream *file, pdf_lexbuf *buf)
{
 pdf_token tok;
 int lo, hi;

 while (1)
 {
  tok = pdf_lex(ctx, file, buf);

  if (tok == PDF_TOK_KEYWORD && !strcmp(buf->scratch, "endcodespacerange"))
   return;

  else if (tok == PDF_TOK_STRING)
  {
   lo = pdf_code_from_string(buf->scratch, buf->len);
   tok = pdf_lex(ctx, file, buf);
   if (tok == PDF_TOK_STRING)
   {
    hi = pdf_code_from_string(buf->scratch, buf->len);
    pdf_add_codespace(ctx, cmap, lo, hi, buf->len);
   }
   else break;
  }

  else break;
 }

 fz_throw(ctx, FZ_ERROR_GENERIC, "expected string or endcodespacerange");
}
