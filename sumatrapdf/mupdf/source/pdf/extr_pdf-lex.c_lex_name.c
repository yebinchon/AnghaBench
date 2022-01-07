
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* scratch; int len; int size; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int fz_stream ;
typedef int fz_context ;
 int fz_mini (int,int ) ;
 int fz_peek_byte (int *,int *) ;
 int fz_unread_byte (int *,int *) ;
 int fz_warn (int *,char*) ;
 char lex_byte (int *,int *) ;
 int pdf_lexbuf_grow (int *,TYPE_1__*) ;

__attribute__((used)) static void
lex_name(fz_context *ctx, fz_stream *f, pdf_lexbuf *lb)
{
 char *s = lb->scratch;
 char *e = s + fz_mini(127, lb->size);
 int c;

 while (1)
 {
  if (s == e)
  {
   if (e - lb->scratch < 127)
   {
    s += pdf_lexbuf_grow(ctx, lb);
    e = lb->scratch + fz_mini(127, lb->size);
   }
   else
   {

    fz_warn(ctx, "name is too long");
    *s = 0;
    lb->len = s - lb->scratch;
    s = ((void*)0);
   }
  }
  c = lex_byte(ctx, f);
  switch (c)
  {
  case 131:
  case 132:
   fz_unread_byte(ctx, f);
   goto end;
  case 133:
   goto end;
  case '#':
  {
   int hex[2];
   int i;
   for (i = 0; i < 2; i++)
   {
    c = fz_peek_byte(ctx, f);
    switch (c)
    {
    case 130:
     if (i == 1 && c == '0' && hex[0] == 0)
      goto illegal;
     hex[i] = lex_byte(ctx, f) - '0';
     break;
    case 128:
     hex[i] = lex_byte(ctx, f) - 'a' + 10;
     break;
    case 129:
     hex[i] = lex_byte(ctx, f) - 'A' + 10;
     break;
    default:
    case 133:
     goto illegal;
    }
   }
   if (s) *s++ = (hex[0] << 4) + hex[1];
   break;
illegal:
   if (i == 1)
    fz_unread_byte(ctx, f);
   if (s) *s++ = '#';
   continue;
  }
  default:
   if (s) *s++ = c;
   break;
  }
 }
end:
 if (s)
 {
  *s = '\0';
  lb->len = s - lb->scratch;
 }
}
