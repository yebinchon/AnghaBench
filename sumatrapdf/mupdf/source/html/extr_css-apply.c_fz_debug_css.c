
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ fz_css_rule ;
struct TYPE_6__ {TYPE_1__* rule; } ;
typedef TYPE_2__ fz_css ;
typedef int fz_context ;


 int print_rule (TYPE_1__*) ;

void
fz_debug_css(fz_context *ctx, fz_css *css)
{
 fz_css_rule *rule = css->rule;
 while (rule)
 {
  print_rule(rule);
  rule = rule->next;
 }
}
