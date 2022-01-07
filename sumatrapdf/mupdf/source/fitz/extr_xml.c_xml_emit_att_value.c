
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct parser {int pool; TYPE_3__* head; } ;
struct attribute {char* value; } ;
struct TYPE_4__ {struct attribute* atts; } ;
struct TYPE_5__ {TYPE_1__ d; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
typedef TYPE_3__ fz_xml ;
typedef int fz_context ;


 char* fz_pool_alloc (int *,int ,int) ;
 int fz_runetochar (char*,int) ;
 int xml_parse_entity (int*,char*) ;

__attribute__((used)) static void xml_emit_att_value(fz_context *ctx, struct parser *parser, char *a, char *b)
{
 fz_xml *head = parser->head;
 struct attribute *att = head->u.d.atts;
 char *s;
 int c;


 s = att->value = fz_pool_alloc(ctx, parser->pool, b - a + 1);
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
}
