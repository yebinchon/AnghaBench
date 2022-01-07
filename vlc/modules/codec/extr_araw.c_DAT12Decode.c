
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int U16_AT (int const*) ;
 void* dat12tos16 (int) ;

__attribute__((used)) static void DAT12Decode( void *outp, const uint8_t *in, unsigned samples )
{
    int16_t *out = outp;

    while( samples >= 2 )
    {
        *(out++) = dat12tos16(U16_AT(in) >> 4);
        *(out++) = dat12tos16(U16_AT(in + 1) & ~0xF000);
        in += 3;
        samples -= 2;
    }

    if( samples )
        *(out++) = dat12tos16(U16_AT(in) >> 4);
}
