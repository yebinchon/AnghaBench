
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ pdf_token ;
struct TYPE_6__ {int scratch; } ;
typedef TYPE_1__ pdf_lexbuf ;
struct TYPE_7__ {int cmap_name; } ;
typedef TYPE_2__ pdf_cmap ;
typedef int fz_stream ;
typedef int fz_context ;


 scalar_t__ PDF_TOK_NAME ;
 int fz_strlcpy (int ,int ,int) ;
 int fz_warn (int *,char*) ;
 scalar_t__ pdf_lex (int *,int *,TYPE_1__*) ;

__attribute__((used)) static void
pdf_parse_cmap_name(fz_context *ctx, pdf_cmap *cmap, fz_stream *file, pdf_lexbuf *buf)
{
 pdf_token tok;

 tok = pdf_lex(ctx, file, buf);

 if (tok == PDF_TOK_NAME)
  fz_strlcpy(cmap->cmap_name, buf->scratch, sizeof(cmap->cmap_name));
 else
  fz_warn(ctx, "expected name after CMapName in cmap");
}
