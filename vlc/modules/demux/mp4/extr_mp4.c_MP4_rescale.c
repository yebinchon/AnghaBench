
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;


 int INT64_MAX ;

__attribute__((used)) static int64_t MP4_rescale( int64_t i_value, uint32_t i_timescale, uint32_t i_newscale )
{
    if( i_timescale == i_newscale )
        return i_value;

    if( i_value <= INT64_MAX / i_newscale )
        return i_value * i_newscale / i_timescale;


    int64_t q = i_value / i_timescale;
    int64_t r = i_value % i_timescale;
    return q * i_newscale + r * i_newscale / i_timescale;
}
