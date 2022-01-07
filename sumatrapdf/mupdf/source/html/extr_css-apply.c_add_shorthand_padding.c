
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_css_value ;
typedef int fz_css_match ;


 int add_shorthand_trbl (int *,int *,int,char*,char*,char*,char*) ;

__attribute__((used)) static void
add_shorthand_padding(fz_css_match *match, fz_css_value *value, int spec)
{
 add_shorthand_trbl(match, value, spec,
  "padding-top", "padding-right", "padding-bottom", "padding-left");
}
