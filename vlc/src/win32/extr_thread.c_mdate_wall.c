
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_5__ {int QuadPart; int HighPart; int LowPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_6__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef TYPE_2__ FILETIME ;


 int CLOCK_FREQ ;
 int GetSystemTimeAsFileTime (TYPE_2__*) ;
 int GetSystemTimePreciseAsFileTime (TYPE_2__*) ;
 int VLC_TICK_FROM_MSFTIME (int ) ;
 int static_assert (int,char*) ;

__attribute__((used)) static vlc_tick_t mdate_wall (void)
{
    FILETIME ts;
    ULARGE_INTEGER s;


    GetSystemTimePreciseAsFileTime (&ts);



    s.LowPart = ts.dwLowDateTime;
    s.HighPart = ts.dwHighDateTime;

    static_assert ((10000000 % CLOCK_FREQ) == 0, "Broken frequencies ratio");
    return VLC_TICK_FROM_MSFTIME(s.QuadPart);
}
