
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unit; float value; } ;
typedef TYPE_1__ fz_css_number ;
float
fz_from_css_number(fz_css_number number, float em, float percent_value, float auto_value)
{
 switch (number.unit) {
 default:
 case 130: return number.value;
 case 131: return number.value;
 case 128: return number.value * em;
 case 129: return number.value * 0.01f * percent_value;
 case 132: return auto_value;
 }
}
