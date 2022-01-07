
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {unsigned long tz_minuteswest; } ;
struct timeval {int dummy; } ;


 int gettimeofday (struct timeval*,struct timezone*) ;
 unsigned long timezone ;

unsigned long getTimeZone(void) {

    return timezone;
}
