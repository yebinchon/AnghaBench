
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static int
parse_transition_time(const char *str, const char **end)
{
 const char *min = ((void*)0);
 errno = 0;
 long hours = strtol(str, (char **)&min, 10);
 if (errno != 0 || min == str || min[0] != ':' ||
     hours < 0 || hours >= 24) {
  return -1;
 }

 min += 1;
 errno = 0;
 long minutes = strtol(min, (char **)end, 10);
 if (errno != 0 || *end == min || minutes < 0 || minutes >= 60) {
  return -1;
 }

 return minutes * 60 + hours * 3600;
}
