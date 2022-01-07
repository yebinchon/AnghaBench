
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wl_fixed_t ;
typedef int uint32_t ;


 int SWAY_DEBUG ;
 int SWAY_SCROLL_DOWN ;
 int SWAY_SCROLL_LEFT ;
 int SWAY_SCROLL_RIGHT ;
 int SWAY_SCROLL_UP ;


 int sway_log (int ,char*) ;
 scalar_t__ wl_fixed_to_double (int ) ;

__attribute__((used)) static uint32_t wl_axis_to_button(uint32_t axis, wl_fixed_t value) {
 bool negative = wl_fixed_to_double(value) < 0;
 switch (axis) {
 case 128:
  return negative ? SWAY_SCROLL_UP : SWAY_SCROLL_DOWN;
 case 129:
  return negative ? SWAY_SCROLL_LEFT : SWAY_SCROLL_RIGHT;
 default:
  sway_log(SWAY_DEBUG, "Unexpected axis value on mouse scroll");
  return 0;
 }
}
