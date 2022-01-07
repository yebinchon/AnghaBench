
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pdf_token ;
struct TYPE_4__ {int len; int * scratch; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int pdf_cmap ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ PDF_TOK_KEYWORD ;
 scalar_t__ PDF_TOK_STRING ;
 int fz_mini (int,int ) ;
 int fz_throw (int *,int ,char*) ;
 int nelem (int*) ;
 int pdf_code_from_string (int *,int) ;
 scalar_t__ pdf_lex (int *,int *,TYPE_1__*) ;
 int pdf_map_one_to_many (int *,int *,int,int*,int) ;
 int strcmp (int *,char*) ;

__attribute__((used)) static void
pdf_parse_bf_char(fz_context *ctx, pdf_cmap *cmap, fz_stream *file, pdf_lexbuf *buf)
{
 pdf_token tok;
 int dst[256];
 int src;
 int i;

 while (1)
 {
  tok = pdf_lex(ctx, file, buf);

  if (tok == PDF_TOK_KEYWORD && !strcmp(buf->scratch, "endbfchar"))
   return;

  else if (tok != PDF_TOK_STRING)
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected string or endbfchar");

  src = pdf_code_from_string(buf->scratch, buf->len);

  tok = pdf_lex(ctx, file, buf);

  if (tok != PDF_TOK_STRING)
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected string");

  if (buf->len / 2)
  {
   int len = fz_mini(buf->len / 2, nelem(dst));
   for (i = 0; i < len; i++)
    dst[i] = pdf_code_from_string(&buf->scratch[i * 2], 2);
   pdf_map_one_to_many(ctx, cmap, src, dst, i);
  }
 }
}
