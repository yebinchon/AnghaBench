
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR_MAX ;

void __FixGrouping(char *grouping) {

  char *g = grouping;
  char building_group = 0;
  char repeat_last = 0;

  if (*g) {
    for (; *g; ++g) {
      if (*g > '0' && *g <= '9') {
        if (!building_group) {
          *grouping = *g - '0';
          building_group = 1;
        }
        else {

          *grouping = *grouping * 10 + *g - '0';
        }
      }
      else if (*g == '0') {
        if (!building_group) {
          repeat_last = 1;
        }
        else

          *grouping *= 10;
      }
      else if (*g == ';') {

        building_group = 0;
        ++grouping;
      }

    }

    if (!repeat_last)
      *grouping++ = CHAR_MAX;
    *grouping = 0;
  }
}
