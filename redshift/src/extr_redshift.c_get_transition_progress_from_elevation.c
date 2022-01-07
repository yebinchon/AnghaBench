
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double low; double high; } ;
typedef TYPE_1__ transition_scheme_t ;



__attribute__((used)) static double
get_transition_progress_from_elevation(
 const transition_scheme_t *transition, double elevation)
{
 if (elevation < transition->low) {
  return 0.0;
 } else if (elevation < transition->high) {
  return (transition->low - elevation) /
   (transition->low - transition->high);
 } else {
  return 1.0;
 }
}
