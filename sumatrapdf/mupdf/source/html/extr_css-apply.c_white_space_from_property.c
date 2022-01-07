
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_match ;


 int WS_NORMAL ;
 int WS_NOWRAP ;
 int WS_PRE ;
 int WS_PRE_LINE ;
 int WS_PRE_WRAP ;
 int strcmp (int ,char*) ;
 TYPE_1__* value_from_property (int *,char*) ;

__attribute__((used)) static int
white_space_from_property(fz_css_match *match)
{
 fz_css_value *value = value_from_property(match, "white-space");
 if (value)
 {
  if (!strcmp(value->data, "normal")) return WS_NORMAL;
  else if (!strcmp(value->data, "pre")) return WS_PRE;
  else if (!strcmp(value->data, "nowrap")) return WS_NOWRAP;
  else if (!strcmp(value->data, "pre-wrap")) return WS_PRE_WRAP;
  else if (!strcmp(value->data, "pre-line")) return WS_PRE_LINE;
 }
 return WS_NORMAL;
}
