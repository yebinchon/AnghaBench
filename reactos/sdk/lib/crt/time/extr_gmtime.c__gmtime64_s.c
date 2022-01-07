
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int errno_t ;
typedef int __time64_t ;


 int ERROR_BAD_COMMAND ;
 int ERROR_SUCCESS ;
 int MSVCRT_INVALID_PMT (char*,int ) ;
 int _gmtime_worker (struct tm*,int ,int ) ;

errno_t
_gmtime64_s(
   struct tm* ptm,
   const __time64_t* ptime)
{
    __time64_t time;

    if (!ptm)
    {
        MSVCRT_INVALID_PMT("ptm == NULL", ERROR_BAD_COMMAND);
        return ERROR_BAD_COMMAND;
    }

    if (!ptime)
    {
        MSVCRT_INVALID_PMT("ptime == NULL", ERROR_BAD_COMMAND);
        return ERROR_BAD_COMMAND;
    }

    time = *ptime;

    _gmtime_worker(ptm, time, 0);

    return ERROR_SUCCESS;
}
