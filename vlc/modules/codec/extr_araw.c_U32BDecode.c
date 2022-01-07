
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 scalar_t__ GetDWBE (int const*) ;

__attribute__((used)) static void U32BDecode( void *outp, const uint8_t *in, unsigned samples )
{
    uint32_t *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {
        *(out++) = GetDWBE( in ) - 0x80000000;
        in += 4;
    }
}
