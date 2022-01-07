
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int _TCHAR ;


 int * _tasctime (struct tm*) ;
 struct tm* localtime (int const*) ;

_TCHAR *
_tctime(const time_t *ptime)
{
    struct tm *ptm = localtime(ptime);
    if (!ptm)
    {
        return 0;
    }
    return _tasctime(ptm);
}
