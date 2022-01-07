
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {scalar_t__ depth; int * head; int preserve_white; } ;
typedef int fz_xml ;
typedef int fz_context ;


 int fz_runetochar (char*,int) ;
 char* fz_xml_text (int *) ;
 int iswhite (char) ;
 int xml_emit_close_tag (int *,struct parser*) ;
 int xml_emit_open_tag (int *,struct parser*,char*,char*,int) ;
 int xml_parse_entity (int*,char*) ;

__attribute__((used)) static void xml_emit_text(fz_context *ctx, struct parser *parser, char *a, char *b)
{
 fz_xml *head;
 char *s;
 int c;


 if (parser->depth == 0)
  return;


 if (!parser->preserve_white)
 {
  for (s = a; s < b; s++)
   if (!iswhite(*s))
    break;
  if (s == b)
   return;
 }

 (void)xml_emit_open_tag(ctx, parser, a, b, 1);
 head = parser->head;


 s = fz_xml_text(head);
 while (a < b) {
  if (*a == '&') {
   a += xml_parse_entity(&c, a);
   s += fz_runetochar(s, c);
  }
  else {
   *s++ = *a++;
  }
 }
 *s = 0;

 xml_emit_close_tag(ctx, parser);
}
