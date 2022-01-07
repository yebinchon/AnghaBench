
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* localtime (int *) ;
 int strftime (char*,size_t,char*,struct tm*) ;
 int time (int *) ;

char *strtime(char *dest, size_t max_len)
{
    time_t timer;
    struct tm *tm_info;

    time(&timer);
    tm_info = localtime(&timer);

    strftime(dest, max_len, "%m:%d %H:%M:%S", tm_info);
    return dest;
}
