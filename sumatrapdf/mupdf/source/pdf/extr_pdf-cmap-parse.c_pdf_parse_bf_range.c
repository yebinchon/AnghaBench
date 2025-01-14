
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ pdf_token ;
struct TYPE_10__ {int len; int * scratch; } ;
typedef TYPE_1__ pdf_lexbuf ;
struct TYPE_11__ {int cmap_name; } ;
typedef TYPE_2__ pdf_cmap ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ PDF_TOK_KEYWORD ;
 scalar_t__ PDF_TOK_OPEN_ARRAY ;
 scalar_t__ PDF_TOK_STRING ;
 int fz_mini (int,int ) ;
 int fz_throw (int *,int ,char*) ;
 int fz_warn (int *,char*,int ) ;
 int nelem (int*) ;
 int pdf_code_from_string (int *,int) ;
 scalar_t__ pdf_lex (int *,int *,TYPE_1__*) ;
 int pdf_map_one_to_many (int *,TYPE_2__*,int,int*,int) ;
 int pdf_map_range_to_range (int *,TYPE_2__*,int,int,int) ;
 int pdf_parse_bf_range_array (int *,TYPE_2__*,int *,TYPE_1__*,int,int) ;
 int strcmp (int *,char*) ;

__attribute__((used)) static void
pdf_parse_bf_range(fz_context *ctx, pdf_cmap *cmap, fz_stream *file, pdf_lexbuf *buf)
{
 pdf_token tok;
 int lo, hi, dst;

 while (1)
 {
  tok = pdf_lex(ctx, file, buf);

  if (tok == PDF_TOK_KEYWORD && !strcmp(buf->scratch, "endbfrange"))
   return;

  else if (tok != PDF_TOK_STRING)
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected string or endbfrange");

  lo = pdf_code_from_string(buf->scratch, buf->len);

  tok = pdf_lex(ctx, file, buf);
  if (tok != PDF_TOK_STRING)
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected string");

  hi = pdf_code_from_string(buf->scratch, buf->len);
  if (lo < 0 || lo > 65535 || hi < 0 || hi > 65535 || lo > hi)
  {
   fz_warn(ctx, "bf_range limits out of range in cmap %s", cmap->cmap_name);
   return;
  }

  tok = pdf_lex(ctx, file, buf);

  if (tok == PDF_TOK_STRING)
  {
   if (buf->len == 2)
   {
    dst = pdf_code_from_string(buf->scratch, buf->len);
    pdf_map_range_to_range(ctx, cmap, lo, hi, dst);
   }
   else
   {
    int dststr[256];
    int i;

    if (buf->len / 2)
    {
     int len = fz_mini(buf->len / 2, nelem(dststr));
     for (i = 0; i < len; i++)
      dststr[i] = pdf_code_from_string(&buf->scratch[i * 2], 2);

     while (lo <= hi)
     {
      pdf_map_one_to_many(ctx, cmap, lo, dststr, i);
      dststr[i-1] ++;
      lo ++;
     }
    }
   }
  }

  else if (tok == PDF_TOK_OPEN_ARRAY)
  {
   pdf_parse_bf_range_array(ctx, cmap, file, buf, lo, hi);
  }

  else
  {
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected string or array or endbfrange");
  }
 }
}
