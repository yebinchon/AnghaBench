
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_1__ fz_css_selector ;
struct TYPE_9__ {TYPE_3__* declaration; TYPE_1__* selector; } ;
typedef TYPE_2__ fz_css_rule ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_3__ fz_css_property ;


 int print_property (TYPE_3__*) ;
 int print_selector (TYPE_1__*) ;
 int printf (char*,...) ;
 int selector_specificity (TYPE_1__*,int ) ;

__attribute__((used)) static void print_rule(fz_css_rule *rule)
{
 fz_css_selector *sel;
 fz_css_property *prop;

 for (sel = rule->selector; sel; sel = sel->next)
 {
  print_selector(sel);
  printf(" /* %d */", selector_specificity(sel, 0));
  if (sel->next)
   printf(", ");
 }

 printf("\n{\n");
 for (prop = rule->declaration; prop; prop = prop->next)
 {
  print_property(prop);
 }
 printf("}\n");
}
