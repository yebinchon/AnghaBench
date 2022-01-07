
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; double tv_usec; } ;
struct _timeb {double time; double millitm; } ;


 int _ftime (struct _timeb*) ;
 double floor (double) ;
 int gettimeofday (struct timeval*,int *) ;
 double time (int *) ;

__attribute__((used)) static double Now(void)
{

 struct timeval tv;
 gettimeofday(&tv, ((void*)0));
 return floor(tv.tv_sec * 1000.0 + tv.tv_usec / 1000.0);







}
