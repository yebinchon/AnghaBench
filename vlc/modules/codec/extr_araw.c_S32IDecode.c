
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int GetDWBE (int const*) ;
 int GetDWLE (int const*) ;

__attribute__((used)) static void S32IDecode( void *outp, const uint8_t *in, unsigned samples )
{
    int32_t *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {



        *(out++) = GetDWBE( in );

        in += 4;
    }
}
