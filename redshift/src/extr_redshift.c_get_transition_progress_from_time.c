
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int end; int start; } ;
struct TYPE_5__ {int start; int end; } ;
struct TYPE_7__ {TYPE_2__ dusk; TYPE_1__ dawn; } ;
typedef TYPE_3__ transition_scheme_t ;



__attribute__((used)) static double
get_transition_progress_from_time(
 const transition_scheme_t *transition, int time_offset)
{
 if (time_offset < transition->dawn.start ||
     time_offset >= transition->dusk.end) {
  return 0.0;
 } else if (time_offset < transition->dawn.end) {
  return (transition->dawn.start - time_offset) /
   (double)(transition->dawn.start -
    transition->dawn.end);
 } else if (time_offset > transition->dusk.start) {
  return (transition->dusk.end - time_offset) /
   (double)(transition->dusk.end -
    transition->dusk.start);
 } else {
  return 1.0;
 }
}
