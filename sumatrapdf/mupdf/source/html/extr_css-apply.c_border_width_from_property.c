
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_number ;
typedef int fz_css_match ;


 int N_LENGTH ;
 int make_number (int,int ) ;
 int number_from_value (TYPE_1__*,int ,int ) ;
 int strcmp (int ,char*) ;
 TYPE_1__* value_from_property (int *,char const*) ;

__attribute__((used)) static fz_css_number
border_width_from_property(fz_css_match *match, const char *property)
{
 fz_css_value *value = value_from_property(match, property);
 if (value)
 {
  if (!strcmp(value->data, "thin"))
   return make_number(1, N_LENGTH);
  if (!strcmp(value->data, "medium"))
   return make_number(2, N_LENGTH);
  if (!strcmp(value->data, "thick"))
   return make_number(4, N_LENGTH);
  return number_from_value(value, 0, N_LENGTH);
 }
 return make_number(2, N_LENGTH);
}
