
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int uint8_t ;
typedef int stime_t ;


 int FROM_SCALE_NZ (int ) ;
 int GetPESTimestamp (int const*) ;

__attribute__((used)) static vlc_tick_t get_pts( const uint8_t *buf )
{
    stime_t i_pts = GetPESTimestamp( buf );
    return FROM_SCALE_NZ(i_pts);
}
