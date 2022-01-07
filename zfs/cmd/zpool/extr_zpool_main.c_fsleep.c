
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {float tv_nsec; scalar_t__ tv_sec; } ;


 float NANOSEC ;
 scalar_t__ floor (float) ;
 int nanosleep (struct timespec*,int *) ;

__attribute__((used)) static void
fsleep(float sec)
{
 struct timespec req;
 req.tv_sec = floor(sec);
 req.tv_nsec = (sec - (float)req.tv_sec) * NANOSEC;
 nanosleep(&req, ((void*)0));
}
