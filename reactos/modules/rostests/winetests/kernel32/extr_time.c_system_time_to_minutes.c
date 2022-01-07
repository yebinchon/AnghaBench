
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwLowDateTime; scalar_t__ dwHighDateTime; } ;
typedef int SYSTEMTIME ;
typedef int LONGLONG ;
typedef TYPE_1__ FILETIME ;
typedef int BOOL ;


 int GetLastError () ;
 int SetLastError (int) ;
 int SystemTimeToFileTime (int const*,TYPE_1__*) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static LONGLONG system_time_to_minutes(const SYSTEMTIME *st)
{
    BOOL ret;
    FILETIME ft;
    LONGLONG minutes;

    SetLastError(0xdeadbeef);
    ret = SystemTimeToFileTime(st, &ft);
    ok(ret, "SystemTimeToFileTime error %u\n", GetLastError());

    minutes = ((LONGLONG)ft.dwHighDateTime << 32) + ft.dwLowDateTime;
    minutes /= (LONGLONG)600000000;
    return minutes;
}
