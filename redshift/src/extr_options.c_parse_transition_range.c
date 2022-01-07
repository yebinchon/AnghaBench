
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int end; } ;
typedef TYPE_1__ time_range_t ;


 int parse_transition_time (char const*,char const**) ;

__attribute__((used)) static int
parse_transition_range(const char *str, time_range_t *range)
{
 const char *next = ((void*)0);
 int start_time = parse_transition_time(str, &next);
 if (start_time < 0) return -1;

 int end_time;
 if (next[0] == '\0') {
  end_time = start_time;
 } else if (next[0] == '-') {
  next += 1;
  const char *end = ((void*)0);
  end_time = parse_transition_time(next, &end);
  if (end_time < 0 || end[0] != '\0') return -1;
 } else {
  return -1;
 }

 range->start = start_time;
 range->end = end_time;

 return 0;
}
