
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pdf_token ;
struct TYPE_4__ {int i; int len; int scratch; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int pdf_cmap ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ PDF_TOK_INT ;
 scalar_t__ PDF_TOK_KEYWORD ;
 scalar_t__ PDF_TOK_STRING ;
 int fz_throw (int *,int ,char*) ;
 int pdf_code_from_string (int ,int ) ;
 scalar_t__ pdf_lex (int *,int *,TYPE_1__*) ;
 int pdf_map_range_to_range (int *,int *,int,int,int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void
pdf_parse_cid_range(fz_context *ctx, pdf_cmap *cmap, fz_stream *file, pdf_lexbuf *buf)
{
 pdf_token tok;
 int lo, hi, dst;

 while (1)
 {
  tok = pdf_lex(ctx, file, buf);

  if (tok == PDF_TOK_KEYWORD && !strcmp(buf->scratch, "endcidrange"))
   return;

  else if (tok != PDF_TOK_STRING)
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected string or endcidrange");

  lo = pdf_code_from_string(buf->scratch, buf->len);

  tok = pdf_lex(ctx, file, buf);
  if (tok != PDF_TOK_STRING)
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected string");

  hi = pdf_code_from_string(buf->scratch, buf->len);

  tok = pdf_lex(ctx, file, buf);
  if (tok != PDF_TOK_INT)
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected integer");

  dst = buf->i;

  pdf_map_range_to_range(ctx, cmap, lo, hi, dst);
 }
}
