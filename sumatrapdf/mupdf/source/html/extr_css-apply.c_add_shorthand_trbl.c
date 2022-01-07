
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_match ;


 int add_property (int *,char const*,TYPE_1__*,int) ;
 int count_values (TYPE_1__*) ;

__attribute__((used)) static void
add_shorthand_trbl(fz_css_match *match, fz_css_value *value, int spec,
 const char *name_t, const char *name_r, const char *name_b, const char *name_l)
{
 int n = count_values(value);

 if (n == 1)
 {
  add_property(match, name_t, value, spec);
  add_property(match, name_r, value, spec);
  add_property(match, name_b, value, spec);
  add_property(match, name_l, value, spec);
 }

 if (n == 2)
 {
  fz_css_value *a = value;
  fz_css_value *b = value->next;

  add_property(match, name_t, a, spec);
  add_property(match, name_r, b, spec);
  add_property(match, name_b, a, spec);
  add_property(match, name_l, b, spec);
 }

 if (n == 3)
 {
  fz_css_value *a = value;
  fz_css_value *b = value->next;
  fz_css_value *c = value->next->next;

  add_property(match, name_t, a, spec);
  add_property(match, name_r, b, spec);
  add_property(match, name_b, c, spec);
  add_property(match, name_l, b, spec);
 }

 if (n == 4)
 {
  fz_css_value *a = value;
  fz_css_value *b = value->next;
  fz_css_value *c = value->next->next;
  fz_css_value *d = value->next->next->next;

  add_property(match, name_t, a, spec);
  add_property(match, name_r, b, spec);
  add_property(match, name_b, c, spec);
  add_property(match, name_l, d, spec);
 }
}
