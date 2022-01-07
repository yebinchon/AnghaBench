
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_css_number ;
typedef int fz_css_match ;


 int number_from_value (int ,float,int) ;
 int value_from_property (int *,char const*) ;

__attribute__((used)) static fz_css_number
number_from_property(fz_css_match *match, const char *property, float initial, int initial_unit)
{
 return number_from_value(value_from_property(match, property), initial, initial_unit);
}
