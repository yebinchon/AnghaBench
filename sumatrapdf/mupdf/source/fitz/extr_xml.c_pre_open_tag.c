
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct parser {int for_html; TYPE_1__* head; } ;
struct TYPE_4__ {struct TYPE_4__* up; } ;
typedef TYPE_1__ fz_xml ;
typedef int fz_context ;
struct TYPE_5__ {int flags; } ;


 int CONTAINER ;
 int find_html_tag (char*,int) ;
 int fz_xml_html_tag__NONE ;
 char* fz_xml_tag (TYPE_1__*) ;
 TYPE_2__* html_tags ;
 int open_implied (int *,struct parser*,int) ;
 int strlen (char*) ;
 int xml_emit_close_tag (int *,struct parser*) ;

__attribute__((used)) static void
pre_open_tag(fz_context *ctx, struct parser *parser, char *mark, char *p)
{
 fz_xml *head = parser->head;
 int tag_num;

 if (!parser->for_html)
  return;

 tag_num = find_html_tag(mark, p-mark);

 if (tag_num == fz_xml_html_tag__NONE)
  return;

 if ((html_tags[tag_num].flags & CONTAINER) == 0)
 {


  fz_xml *which;
  for (which = head; which; which = which->up)
  {
   char *tag = fz_xml_tag(which);
   int tag_num2 = tag ? find_html_tag(tag, strlen(tag)) : fz_xml_html_tag__NONE;
   if (tag_num == tag_num2)
   {

    while (1)
    {
     int done = (head == which);
     xml_emit_close_tag(ctx, parser);
     head = head->up;
     if (done)
      break;
    }
    break;
   }
   if (html_tags[tag_num2].flags & CONTAINER)
   {

    break;
   }
  }
 }


 open_implied(ctx, parser, tag_num);
}
