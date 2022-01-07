
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int ULONGLONG ;


 int CLOCK_FREQ ;
 int GetTickCount64 () ;
 int VLC_TICK_FROM_MS (int ) ;
 int static_assert (int,char*) ;

__attribute__((used)) static vlc_tick_t mdate_tick (void)
{
    ULONGLONG ts = GetTickCount64 ();


    static_assert ((CLOCK_FREQ % 1000) == 0, "Broken frequencies ratio");
    return VLC_TICK_FROM_MS( ts );
}
