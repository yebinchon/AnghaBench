
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct time {scalar_t__ sec; scalar_t__ tz; } ;
struct TYPE_3__ {scalar_t__ interval; scalar_t__ in_seconds; int name; int compact_symbol; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* reldate ;
 int string_nformat (char*,size_t,int *,char*,scalar_t__,scalar_t__,char*,...) ;
 scalar_t__ time_now (struct timeval*,int *) ;

__attribute__((used)) static const char *
get_relative_date(const struct time *time, char *buf, size_t buflen, bool compact)
{
 struct timeval now;
 time_t timestamp = time->sec + time->tz;
 time_t seconds;
 int i;

 if (time_now(&now, ((void*)0)))
  return "";

 seconds = now.tv_sec < timestamp ? timestamp - now.tv_sec : now.tv_sec - timestamp;

 for (i = 0; i < ARRAY_SIZE(reldate); i++) {
  if (seconds >= reldate[i].interval && reldate[i].interval)
   continue;

  seconds /= reldate[i].in_seconds;
  if (compact) {
   if (!string_nformat(buf, buflen, ((void*)0), "%s%ld%c",
        now.tv_sec >= timestamp ? "" : "-",
        seconds, reldate[i].compact_symbol))
    return "";

  } else if (!string_nformat(buf, buflen, ((void*)0), "%ld %s%s %s",
        seconds, reldate[i].name,
        seconds > 1 ? "s" : "",
        now.tv_sec >= timestamp ? "ago" : "ahead"))
   return "";

  return buf;
 }

 return "";
}
