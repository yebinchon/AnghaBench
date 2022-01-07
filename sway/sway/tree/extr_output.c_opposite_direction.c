
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;






 int assert (int) ;

enum wlr_direction opposite_direction(enum wlr_direction d) {
 switch (d) {
 case 128:
  return 131;
 case 131:
  return 128;
 case 129:
  return 130;
 case 130:
  return 129;
 }
 assert(0);
 return 0;
}
