
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_match ;


 TYPE_1__* value_from_property (int *,char const*) ;

__attribute__((used)) static const char *
string_from_property(fz_css_match *match, const char *name, const char *initial)
{
 fz_css_value *value;
 value = value_from_property(match, name);
 if (!value)
  return initial;
 return value->data;
}
