
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_year; int tm_mday; int tm_mon; int tm_sec; int tm_min; int tm_hour; } ;


 scalar_t__ GetUTCOffset (int ,int ) ;
 scalar_t__ kModTimeUnknown ;
 struct tm* localtime (scalar_t__*) ;
 scalar_t__ mktime (struct tm*) ;
 int sscanf (char*,char*,int*,int *,int *,int *,int *,int *) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int time (scalar_t__*) ;

time_t UnMDTMDate(char *dstr)
{

 return (kModTimeUnknown);
}
