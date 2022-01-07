
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int GetWBE (int const*) ;
 int MpgaXingSkip (int const**,int*,int) ;

__attribute__((used)) static uint16_t MpgaXingGetWBE( const uint8_t **pp_xing, int *pi_xing, uint16_t i_default )
{
    if( *pi_xing < 2 )
        return i_default;

    uint16_t v = GetWBE( *pp_xing );

    MpgaXingSkip( pp_xing, pi_xing, 2 );

    return v;
}
