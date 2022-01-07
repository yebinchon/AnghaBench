
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* next; int data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_match ;


 scalar_t__ CSS_HASH ;
 scalar_t__ CSS_KEYWORD ;
 int add_property (int *,char*,TYPE_1__*,int) ;
 int border_style_kw ;
 int border_width_kw ;
 int color_kw ;
 scalar_t__ keyword_in_list (int ,int ,int ) ;
 int nelem (int ) ;

__attribute__((used)) static void
add_shorthand_border(fz_css_match *match, fz_css_value *value, int spec, int T, int R, int B, int L)
{
 while (value)
 {
  if (value->type == CSS_HASH)
  {
   if (T) add_property(match, "border-top-color", value, spec);
   if (R) add_property(match, "border-right-color", value, spec);
   if (B) add_property(match, "border-bottom-color", value, spec);
   if (L) add_property(match, "border-left-color", value, spec);
  }
  else if (value->type == CSS_KEYWORD)
  {
   if (keyword_in_list(value->data, border_width_kw, nelem(border_width_kw)))
   {
    if (T) add_property(match, "border-top-width", value, spec);
    if (R) add_property(match, "border-right-width", value, spec);
    if (B) add_property(match, "border-bottom-width", value, spec);
    if (L) add_property(match, "border-left-width", value, spec);
   }
   else if (keyword_in_list(value->data, border_style_kw, nelem(border_style_kw)))
   {
    if (T) add_property(match, "border-top-style", value, spec);
    if (R) add_property(match, "border-right-style", value, spec);
    if (B) add_property(match, "border-bottom-style", value, spec);
    if (L) add_property(match, "border-left-style", value, spec);
   }
   else if (keyword_in_list(value->data, color_kw, nelem(color_kw)))
   {
    if (T) add_property(match, "border-top-color", value, spec);
    if (R) add_property(match, "border-right-color", value, spec);
    if (B) add_property(match, "border-bottom-color", value, spec);
    if (L) add_property(match, "border-left-color", value, spec);
   }
  }
  else
  {
   if (T) add_property(match, "border-top-width", value, spec);
   if (R) add_property(match, "border-right-width", value, spec);
   if (B) add_property(match, "border-bottom-width", value, spec);
   if (L) add_property(match, "border-left-width", value, spec);
  }
  value = value->next;
 }
}
