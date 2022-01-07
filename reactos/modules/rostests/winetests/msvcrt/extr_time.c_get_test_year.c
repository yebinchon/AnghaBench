
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; } ;


 int SECSPERDAY ;
 struct tm* localtime (int*) ;
 int time (int *) ;

__attribute__((used)) static int get_test_year(time_t *start)
{
    time_t now = time(((void*)0));
    struct tm *tm = localtime(&now);


    *start = SECSPERDAY * ((tm->tm_year - 70) * 365 +
                           (tm->tm_year - 69) / 4 -
                           (tm->tm_year - 1) / 100 +
                           (tm->tm_year + 299) / 400);
    return tm->tm_year;
}
