
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int pdf_token ;
typedef int pdf_obj ;
struct TYPE_6__ {int i; int len; int scratch; int f; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int pdf_document ;
typedef int fz_stream ;
typedef int fz_context ;


 int FZ_ERROR_SYNTAX ;
 int * PDF_FALSE ;
 int * PDF_NULL ;
 int * PDF_TRUE ;
 int fz_throw (int *,int ,char*) ;
 int pdf_lex (int *,int *,TYPE_1__*) ;
 int * pdf_new_int (int *,int ) ;
 int * pdf_new_name (int *,int ) ;
 int * pdf_new_real (int *,int ) ;
 int * pdf_new_string (int *,int ,int ) ;
 int * pdf_parse_array (int *,int *,int *,TYPE_1__*) ;
 int * pdf_parse_dict (int *,int *,int *,TYPE_1__*) ;

pdf_obj *
pdf_parse_stm_obj(fz_context *ctx, pdf_document *doc, fz_stream *file, pdf_lexbuf *buf)
{
 pdf_token tok;

 tok = pdf_lex(ctx, file, buf);

 switch (tok)
 {
 case 132:
  return pdf_parse_array(ctx, doc, file, buf);
 case 131:
  return pdf_parse_dict(ctx, doc, file, buf);
 case 134: return pdf_new_name(ctx, buf->scratch);
 case 130: return pdf_new_real(ctx, buf->f);
 case 129: return pdf_new_string(ctx, buf->scratch, buf->len);
 case 128: return PDF_TRUE;
 case 136: return PDF_FALSE;
 case 133: return PDF_NULL;
 case 135: return pdf_new_int(ctx, buf->i);
 default: fz_throw(ctx, FZ_ERROR_SYNTAX, "unknown token in object stream");
 }
}
