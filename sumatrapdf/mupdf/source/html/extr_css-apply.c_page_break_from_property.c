
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_match ;


 int PB_ALWAYS ;
 int PB_AUTO ;
 int PB_AVOID ;
 int PB_LEFT ;
 int PB_RIGHT ;
 int strcmp (int ,char*) ;
 TYPE_1__* value_from_property (int *,char*) ;

__attribute__((used)) static int
page_break_from_property(fz_css_match *match, char *prop)
{
 fz_css_value *value = value_from_property(match, prop);
 if (value)
 {
  if (!strcmp(value->data, "auto")) return PB_AUTO;
  else if (!strcmp(value->data, "always")) return PB_ALWAYS;
  else if (!strcmp(value->data, "avoid")) return PB_AVOID;
  else if (!strcmp(value->data, "left")) return PB_LEFT;
  else if (!strcmp(value->data, "right")) return PB_RIGHT;
 }
 return PB_AUTO;
}
