
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parser {TYPE_2__* head; } ;
struct TYPE_3__ {char* text; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
typedef TYPE_2__ fz_xml ;
typedef int fz_context ;


 int xml_emit_close_tag (int *,struct parser*) ;
 int xml_emit_open_tag (int *,struct parser*,char*,char*,int) ;

__attribute__((used)) static void xml_emit_cdata(fz_context *ctx, struct parser *parser, char *a, char *b)
{
 fz_xml *head;
 char *s;

 (void)xml_emit_open_tag(ctx, parser, a, b, 1);
 head = parser->head;

 s = head->u.text;
 while (a < b)
  *s++ = *a++;
 *s = 0;

 xml_emit_close_tag(ctx, parser);
}
