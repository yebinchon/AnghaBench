
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ fz_css_match_prop ;
struct TYPE_5__ {int count; TYPE_1__* prop; } ;
typedef TYPE_2__ fz_css_match ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
sort_properties(fz_css_match *match)
{
 int count = match->count;
 fz_css_match_prop *prop = match->prop;
 int i, k;


 for (i = 1; i < count; ++i)
 {
  k = i;
  while (k > 0 && strcmp(prop[k-1].name, prop[k].name) > 0)
  {
   fz_css_match_prop save = prop[k-1];
   prop[k-1] = prop[k];
   prop[k] = save;
   --k;
  }
 }
}
