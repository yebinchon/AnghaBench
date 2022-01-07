
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {double tv_sec; double tv_usec; } ;
struct timespec {double tv_sec; double tv_nsec; } ;
struct TYPE_4__ {double QuadPart; int HighPart; int LowPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_5__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef TYPE_2__ FILETIME ;


 int CLOCK_REALTIME ;
 int GetSystemTimeAsFileTime (TYPE_2__*) ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;
 int perror (char*) ;

int
systemtime_get_time(double *t)
{
 struct timeval now;
 int r = gettimeofday(&now, ((void*)0));
 if (r < 0) {
  perror("gettimeofday");
  return -1;
 }

 *t = now.tv_sec + (now.tv_usec / 1000000.0);


 return 0;
}
