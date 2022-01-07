
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double low; double high; } ;
typedef TYPE_1__ transition_scheme_t ;
typedef int period_t ;


 int PERIOD_DAYTIME ;
 int PERIOD_NIGHT ;
 int PERIOD_TRANSITION ;

__attribute__((used)) static period_t
get_period_from_elevation(
 const transition_scheme_t *transition, double elevation)
{
 if (elevation < transition->low) {
  return PERIOD_NIGHT;
 } else if (elevation < transition->high) {
  return PERIOD_TRANSITION;
 } else {
  return PERIOD_DAYTIME;
 }
}
