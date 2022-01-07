
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_css_match ;
typedef int fz_css_color ;


 int color_from_value (int ,int ) ;
 int value_from_property (int *,char const*) ;

__attribute__((used)) static fz_css_color
color_from_property(fz_css_match *match, const char *property, fz_css_color initial)
{
 return color_from_value(value_from_property(match, property), initial);
}
