
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdf_token ;
struct TYPE_7__ {int scratch; } ;
typedef TYPE_1__ pdf_lexbuf ;
typedef int fz_stream ;
typedef int fz_context ;





 int PDF_TOK_CLOSE_ARRAY ;
 int PDF_TOK_CLOSE_BRACE ;
 int PDF_TOK_CLOSE_DICT ;
 int PDF_TOK_EOF ;
 int PDF_TOK_ERROR ;
 int PDF_TOK_NAME ;
 int PDF_TOK_OPEN_ARRAY ;
 int PDF_TOK_OPEN_BRACE ;
 int PDF_TOK_OPEN_DICT ;
 int fz_unread_byte (int *,int *) ;
 int lex_byte (int *,int *) ;
 int lex_comment (int *,int *) ;
 int lex_hex_string (int *,int *,TYPE_1__*) ;
 int lex_name (int *,int *,TYPE_1__*) ;
 int lex_number (int *,int *,TYPE_1__*,int) ;
 int lex_string (int *,int *,TYPE_1__*) ;
 int lex_white (int *,int *) ;
 int pdf_token_from_keyword (int ) ;

pdf_token
pdf_lex(fz_context *ctx, fz_stream *f, pdf_lexbuf *buf)
{
 while (1)
 {
  int c = lex_byte(ctx, f);
  switch (c)
  {
  case 130:
   return PDF_TOK_EOF;
  case 128:
   lex_white(ctx, f);
   break;
  case '%':
   lex_comment(ctx, f);
   break;
  case '/':
   lex_name(ctx, f, buf);
   return PDF_TOK_NAME;
  case '(':
   return lex_string(ctx, f, buf);
  case ')':
   return PDF_TOK_ERROR;
  case '<':
   c = lex_byte(ctx, f);
   if (c == '<')
    return PDF_TOK_OPEN_DICT;
   if (c != 130)
    fz_unread_byte(ctx, f);
   return lex_hex_string(ctx, f, buf);
  case '>':
   c = lex_byte(ctx, f);
   if (c == '>')
    return PDF_TOK_CLOSE_DICT;
   if (c != 130)
    fz_unread_byte(ctx, f);
   return PDF_TOK_ERROR;
  case '[':
   return PDF_TOK_OPEN_ARRAY;
  case ']':
   return PDF_TOK_CLOSE_ARRAY;
  case '{':
   return PDF_TOK_OPEN_BRACE;
  case '}':
   return PDF_TOK_CLOSE_BRACE;
  case 129:
   return lex_number(ctx, f, buf, c);
  default:
   fz_unread_byte(ctx, f);
   lex_name(ctx, f, buf);
   return pdf_token_from_keyword(buf->scratch);
  }
 }
}
