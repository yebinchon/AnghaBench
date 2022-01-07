
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_match ;


 int V_COLLAPSE ;
 int V_HIDDEN ;
 int V_VISIBLE ;
 int strcmp (int ,char*) ;
 TYPE_1__* value_from_property (int *,char*) ;

__attribute__((used)) static int
visibility_from_property(fz_css_match *match)
{
 fz_css_value *value = value_from_property(match, "visibility");
 if (value)
 {
  if (!strcmp(value->data, "visible")) return V_VISIBLE;
  else if (!strcmp(value->data, "hidden")) return V_HIDDEN;
  else if (!strcmp(value->data, "collapse")) return V_COLLAPSE;
 }
 return V_VISIBLE;
}
