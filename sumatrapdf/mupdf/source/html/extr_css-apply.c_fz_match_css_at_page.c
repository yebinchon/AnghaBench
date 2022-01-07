
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; scalar_t__ name; } ;
typedef TYPE_1__ fz_css_selector ;
struct TYPE_8__ {TYPE_3__* declaration; TYPE_1__* selector; struct TYPE_8__* next; } ;
typedef TYPE_2__ fz_css_rule ;
struct TYPE_9__ {int important; int value; int name; struct TYPE_9__* next; } ;
typedef TYPE_3__ fz_css_property ;
typedef int fz_css_match ;
struct TYPE_10__ {TYPE_2__* rule; } ;
typedef TYPE_4__ fz_css ;
typedef int fz_context ;


 int add_property (int *,int ,int ,int ) ;
 int selector_specificity (TYPE_1__*,int ) ;
 int sort_properties (int *) ;
 int strcmp (scalar_t__,char*) ;

void
fz_match_css_at_page(fz_context *ctx, fz_css_match *match, fz_css *css)
{
 fz_css_rule *rule;
 fz_css_selector *sel;
 fz_css_property *prop;

 for (rule = css->rule; rule; rule = rule->next)
 {
  sel = rule->selector;
  while (sel)
  {
   if (sel->name && !strcmp(sel->name, "@page"))
   {
    for (prop = rule->declaration; prop; prop = prop->next)
     add_property(match, prop->name, prop->value, selector_specificity(sel, prop->important));
    break;
   }
   sel = sel->next;
  }
 }

 sort_properties(match);
}
