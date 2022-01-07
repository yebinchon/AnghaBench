
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* gmtime (int const*) ;

__attribute__((used)) static struct tm *
gmtime_r(const time_t *timer, struct tm *result)
{
    struct tm *tmp = gmtime(timer);

    if (tmp) {
        *result = *tmp;
        return result;
    }
    return tmp;
}
