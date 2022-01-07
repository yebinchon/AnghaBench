
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_css_value ;
struct TYPE_4__ {int * value; int name; } ;
typedef TYPE_1__ fz_css_match_prop ;
struct TYPE_5__ {int count; TYPE_1__* prop; } ;
typedef TYPE_2__ fz_css_match ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static fz_css_value *
value_from_raw_property(fz_css_match *match, const char *name)
{
 fz_css_match_prop *prop = match->prop;
 int l = 0;
 int r = match->count - 1;
 while (l <= r)
 {
  int m = (l + r) >> 1;
  int c = strcmp(name, prop[m].name);
  if (c < 0)
   r = m - 1;
  else if (c > 0)
   l = m + 1;
  else
   return prop[m].value;
 }
 return ((void*)0);
}
