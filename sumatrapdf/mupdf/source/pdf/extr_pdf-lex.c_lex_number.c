
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* scratch; int size; int i; int f; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int fz_stream ;
typedef int fz_context ;





 int PDF_TOK_ERROR ;
 int PDF_TOK_INT ;
 int PDF_TOK_REAL ;

 int acrobat_compatible_atof (char*) ;
 int fast_atoi (char*) ;
 int fz_atof (char*) ;
 int fz_unread_byte (int *,int *) ;
 int lex_byte (int *,int *) ;

__attribute__((used)) static int
lex_number(fz_context *ctx, fz_stream *f, pdf_lexbuf *buf, int c)
{
 char *s = buf->scratch;
 char *e = buf->scratch + buf->size - 1;
 char *isreal = (c == '.' ? s : ((void*)0));
 int neg = (c == '-');
 int isbad = 0;

 *s++ = c;

 c = lex_byte(ctx, f);


 if (neg)
 {
  while (c == '-')
   c = lex_byte(ctx, f);
 }

 while (s < e)
 {
  switch (c)
  {
  case 129:
  case 130:
   fz_unread_byte(ctx, f);
   goto end;
  case 131:
   goto end;
  case '.':
   if (isreal)
    isbad = 1;
   isreal = s;
   *s++ = c;
   break;
  case 128:
   *s++ = c;
   break;
  default:
   isbad = 1;
   *s++ = c;
   break;
  }
  c = lex_byte(ctx, f);
 }

end:
 *s = '\0';
 if (isbad)
  return PDF_TOK_ERROR;
 if (isreal)
 {





  if (neg > 1 || isreal - buf->scratch >= 10)
   buf->f = acrobat_compatible_atof(buf->scratch);
  else
   buf->f = fz_atof(buf->scratch);
  return PDF_TOK_REAL;
 }
 else
 {
  buf->i = fast_atoi(buf->scratch);
  return PDF_TOK_INT;
 }
}
