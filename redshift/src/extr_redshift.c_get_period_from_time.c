
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
typedef int period_t ;


 int PERIOD_DAYTIME ;
 int PERIOD_NIGHT ;
 int PERIOD_TRANSITION ;

__attribute__((used)) static period_t
get_period_from_time(const transition_scheme_t *transition, int time_offset)
{
 if (time_offset < transition->dawn.start ||
     time_offset >= transition->dusk.end) {
  return PERIOD_NIGHT;
 } else if (time_offset >= transition->dawn.end &&
     time_offset < transition->dusk.start) {
  return PERIOD_DAYTIME;
 } else {
  return PERIOD_TRANSITION;
 }
}
