
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; size_t size; int * scratch; int * f; int * i; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int fz_context ;
typedef int fz_buffer ;
 int fz_append_byte (int *,int *,char) ;
 int fz_append_data (int *,int *,int *,size_t) ;
 int fz_append_pdf_string (int *,int *,int *) ;
 int fz_append_printf (int *,int *,char*,int *) ;
 int fz_append_string (int *,int *,char*) ;
 int pdf_lexbuf_grow (int *,TYPE_1__*) ;

void pdf_append_token(fz_context *ctx, fz_buffer *fzbuf, int tok, pdf_lexbuf *buf)
{
 switch (tok)
 {
 case 133:
  fz_append_printf(ctx, fzbuf, "/%s", buf->scratch);
  break;
 case 128:
  if (buf->len >= buf->size)
   pdf_lexbuf_grow(ctx, buf);
  buf->scratch[buf->len] = 0;
  fz_append_pdf_string(ctx, fzbuf, buf->scratch);
  break;
 case 130:
  fz_append_string(ctx, fzbuf, "<<");
  break;
 case 135:
  fz_append_string(ctx, fzbuf, ">>");
  break;
 case 132:
  fz_append_byte(ctx, fzbuf, '[');
  break;
 case 137:
  fz_append_byte(ctx, fzbuf, ']');
  break;
 case 131:
  fz_append_byte(ctx, fzbuf, '{');
  break;
 case 136:
  fz_append_byte(ctx, fzbuf, '}');
  break;
 case 134:
  fz_append_printf(ctx, fzbuf, "%ld", buf->i);
  break;
 case 129:
  fz_append_printf(ctx, fzbuf, "%g", buf->f);
  break;
 default:
  fz_append_data(ctx, fzbuf, buf->scratch, buf->len);
  break;
 }
}
