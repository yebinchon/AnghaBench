
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {TYPE_1__* head; int depth; } ;
typedef int fz_context ;
struct TYPE_2__ {struct TYPE_2__* up; int * next; } ;



__attribute__((used)) static void xml_emit_close_tag(fz_context *ctx, struct parser *parser)
{
 parser->depth--;
 parser->head->next = ((void*)0);
 if (parser->head->up)
  parser->head = parser->head->up;
}
