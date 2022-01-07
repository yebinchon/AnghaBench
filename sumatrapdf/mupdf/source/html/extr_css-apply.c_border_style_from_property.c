
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_match ;


 int BS_NONE ;
 int BS_SOLID ;
 int strcmp (int ,char*) ;
 TYPE_1__* value_from_property (int *,char const*) ;

__attribute__((used)) static int
border_style_from_property(fz_css_match *match, const char *property)
{
 fz_css_value *value = value_from_property(match, property);
 if (value)
 {
  if (!strcmp(value->data, "none")) return BS_NONE;
  else if (!strcmp(value->data, "hidden")) return BS_NONE;
  else if (!strcmp(value->data, "solid")) return BS_SOLID;
 }
 return BS_NONE;
}
