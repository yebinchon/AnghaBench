
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 scalar_t__ GetWBE (int const*) ;

__attribute__((used)) static void U16BDecode( void *outp, const uint8_t *in, unsigned samples )
{
    uint16_t *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {
        *(out++) = GetWBE( in ) - 0x8000;
        in += 2;
    }
}
