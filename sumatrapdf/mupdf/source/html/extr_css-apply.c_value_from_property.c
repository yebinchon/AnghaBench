
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* data; } ;
typedef TYPE_1__ fz_css_value ;
struct TYPE_8__ {struct TYPE_8__* up; } ;
typedef TYPE_2__ fz_css_match ;


 int inherit_list ;
 scalar_t__ keyword_in_list (char const*,int ,int ) ;
 int nelem (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 TYPE_1__* value_from_raw_property (TYPE_2__*,char const*) ;

__attribute__((used)) static fz_css_value *
value_from_property(fz_css_match *match, const char *name)
{
 fz_css_value *value;

 value = value_from_raw_property(match, name);
 if (match->up)
 {
  if (value && !strcmp(value->data, "inherit"))
   if (strcmp(name, "font-size") != 0)
    return value_from_property(match->up, name);
  if (!value && keyword_in_list(name, inherit_list, nelem(inherit_list)))
   return value_from_property(match->up, name);
 }
 return value;
}
