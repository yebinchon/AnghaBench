
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_token ;


 int PDF_TOK_ENDOBJ ;
 int PDF_TOK_ENDSTREAM ;
 int PDF_TOK_ERROR ;
 int PDF_TOK_FALSE ;
 int PDF_TOK_KEYWORD ;
 int PDF_TOK_NULL ;
 int PDF_TOK_OBJ ;
 int PDF_TOK_R ;
 int PDF_TOK_STARTXREF ;
 int PDF_TOK_STREAM ;
 int PDF_TOK_TRAILER ;
 int PDF_TOK_TRUE ;
 int PDF_TOK_XREF ;
 int fz_isprint (char) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static pdf_token
pdf_token_from_keyword(char *key)
{
 switch (*key)
 {
 case 'R':
  if (!strcmp(key, "R")) return PDF_TOK_R;
  break;
 case 't':
  if (!strcmp(key, "true")) return PDF_TOK_TRUE;
  if (!strcmp(key, "trailer")) return PDF_TOK_TRAILER;
  break;
 case 'f':
  if (!strcmp(key, "false")) return PDF_TOK_FALSE;
  break;
 case 'n':
  if (!strcmp(key, "null")) return PDF_TOK_NULL;
  break;
 case 'o':
  if (!strcmp(key, "obj")) return PDF_TOK_OBJ;
  break;
 case 'e':
  if (!strcmp(key, "endobj")) return PDF_TOK_ENDOBJ;
  if (!strcmp(key, "endstream")) return PDF_TOK_ENDSTREAM;
  break;
 case 's':
  if (!strcmp(key, "stream")) return PDF_TOK_STREAM;
  if (!strcmp(key, "startxref")) return PDF_TOK_STARTXREF;
  break;
 case 'x':
  if (!strcmp(key, "xref")) return PDF_TOK_XREF;
  break;
 }

 while (*key)
 {
  if (!fz_isprint(*key))
   return PDF_TOK_ERROR;
  ++key;
 }

 return PDF_TOK_KEYWORD;
}
