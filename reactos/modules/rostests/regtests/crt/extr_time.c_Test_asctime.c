
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_mday; int tm_min; int tm_mon; int tm_sec; int tm_wday; int tm_yday; int tm_year; scalar_t__ tm_hour; } ;


 char* asctime (struct tm*) ;
 int ok (int,char*,char*) ;
 int strcmp (char*,char*) ;

void Test_asctime()
{

    struct tm time;
    char* timestr;
    char explowtime[] = "Mon Jun 04 00:30:20 1909\n";

    time.tm_hour = 0;
    time.tm_mday = 4;
    time.tm_min = 30;
    time.tm_mon = 5;
    time.tm_sec = 20;
    time.tm_wday = 1;
    time.tm_yday = 200;
    time.tm_year = 9;

    timestr = asctime(&time);
    ok(!strcmp(timestr, explowtime), "Wrong time returned, got %s\n", timestr);
}
