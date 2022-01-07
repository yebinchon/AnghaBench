
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct parser {TYPE_1__* head; scalar_t__ for_html; } ;
struct TYPE_3__ {struct TYPE_3__* up; } ;
typedef TYPE_1__ fz_xml ;
typedef int fz_context ;


 scalar_t__ fz_strncasecmp (char*,char*,int) ;
 char* fz_xml_tag (TYPE_1__*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int xml_emit_close_tag (int *,struct parser*) ;

__attribute__((used)) static int
pop_to_tag(fz_context *ctx, struct parser *parser, char *mark, char *p)
{
 fz_xml *to, *head;


 if (parser->for_html)
 {
  for (to = parser->head; to; to = to->up)
  {
   char *tag = fz_xml_tag(to);
   if (tag && fz_strncasecmp(tag, mark, p-mark) == 0 && tag[p-mark] == 0)
    break;
  }
 }
 else
 {
  for (to = parser->head; to; to = to->up)
  {
   char *tag = fz_xml_tag(to);
   if (tag && strncmp(tag, mark, p-mark) == 0 && tag[p-mark] == 0)
    break;
  }
 }

 if (to == ((void*)0))
 {

  return 0;
 }


 for (head = parser->head; head != to; head = head->up)
  xml_emit_close_tag(ctx, parser);
 return 1;
}
