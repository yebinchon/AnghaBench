
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct time {scalar_t__ sec; } ;


 scalar_t__ atol (char const*) ;

__attribute__((used)) static void
parse_timesec(struct time *time, const char *sec)
{
 time->sec = (time_t) atol(sec);
}
