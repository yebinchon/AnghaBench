
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_sec; int tm_min; int tm_hour; int tm_mday; } ;


 struct tm* localtime (int *) ;
 int mktime (struct tm*) ;
 int sscanf (char*,char*,int*,int *,int *,int *,int *,int *) ;
 int time (int *) ;

time_t UnDate(char *dstr)
{

 return ((time_t) -1);
}
