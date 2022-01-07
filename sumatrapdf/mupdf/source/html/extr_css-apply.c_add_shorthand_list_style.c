
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* next; int data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_match ;


 scalar_t__ CSS_KEYWORD ;
 int add_property (int *,char*,TYPE_1__*,int) ;
 scalar_t__ keyword_in_list (int ,int ,int ) ;
 int list_style_position_kw ;
 int list_style_type_kw ;
 int nelem (int ) ;

__attribute__((used)) static void
add_shorthand_list_style(fz_css_match *match, fz_css_value *value, int spec)
{
 while (value)
 {
  if (value->type == CSS_KEYWORD)
  {
   if (keyword_in_list(value->data, list_style_type_kw, nelem(list_style_type_kw)))
   {
    add_property(match, "list-style-type", value, spec);
   }
   else if (keyword_in_list(value->data, list_style_position_kw, nelem(list_style_position_kw)))
   {
    add_property(match, "list-style-position", value, spec);
   }
  }
  value = value->next;
 }
}
