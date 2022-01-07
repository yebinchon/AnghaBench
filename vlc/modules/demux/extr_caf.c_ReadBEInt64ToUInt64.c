
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ GetQWBE (int const*) ;
 scalar_t__ INT64_MAX ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static inline int ReadBEInt64ToUInt64( const uint8_t *p, uint64_t *i_out )
{
    uint64_t i_value = GetQWBE( p );

    if( i_value > INT64_MAX ) return VLC_EGENERIC;

    *i_out = i_value;
    return VLC_SUCCESS;
}
