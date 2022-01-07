
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_tick_t ;
typedef int tt_time_t ;


 scalar_t__ tt_time_Convert (int const*) ;

__attribute__((used)) static inline int tt_time_Compare( const tt_time_t *t1, const tt_time_t *t2 )
{
    vlc_tick_t ttt1 = tt_time_Convert( t1 );
    vlc_tick_t ttt2 = tt_time_Convert( t2 );
    if (ttt1 < ttt2)
        return -1;
    return ttt1 > ttt2;
}
