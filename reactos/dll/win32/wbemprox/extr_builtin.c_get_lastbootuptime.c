
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ti ;
typedef char WCHAR ;
struct TYPE_6__ {int liKeBootTime; } ;
struct TYPE_5__ {int Milliseconds; int Second; int Minute; int Hour; int Day; int Month; int Year; } ;
typedef TYPE_1__ TIME_FIELDS ;
typedef TYPE_2__ SYSTEM_TIMEOFDAY_INFORMATION ;


 int NtQuerySystemInformation (int ,TYPE_2__*,int,int *) ;
 int RtlTimeToTimeFields (int *,TYPE_1__*) ;
 int SystemTimeOfDayInformation ;
 char* heap_alloc (int) ;
 int sprintfW (char*,char const*,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static WCHAR *get_lastbootuptime(void)
{
    static const WCHAR fmtW[] =
        {'%','0','4','u','%','0','2','u','%','0','2','u','%','0','2','u','%','0','2','u','%','0','2','u',
         '.','%','0','6','u','+','0','0','0',0};
    SYSTEM_TIMEOFDAY_INFORMATION ti;
    TIME_FIELDS tf;
    WCHAR *ret;

    if (!(ret = heap_alloc( 26 * sizeof(WCHAR) ))) return ((void*)0);

    NtQuerySystemInformation( SystemTimeOfDayInformation, &ti, sizeof(ti), ((void*)0) );
    RtlTimeToTimeFields( &ti.liKeBootTime, &tf );
    sprintfW( ret, fmtW, tf.Year, tf.Month, tf.Day, tf.Hour, tf.Minute, tf.Second, tf.Milliseconds * 1000 );
    return ret;
}
