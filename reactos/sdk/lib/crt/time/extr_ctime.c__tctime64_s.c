
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef scalar_t__ errno_t ;
typedef int _TCHAR ;


 scalar_t__ EINVAL ;
 scalar_t__ _tasctime_s (int *,size_t,struct tm*) ;
 scalar_t__ localtime_s (struct tm*,int const*) ;

errno_t
_tctime_s(_TCHAR *buffer, size_t numberOfElements, const time_t *time)
{
    struct tm _tm;

    if (localtime_s(&_tm, time) == EINVAL)
    {
        return EINVAL;
    }
    return _tasctime_s(buffer, numberOfElements, &_tm);
}
