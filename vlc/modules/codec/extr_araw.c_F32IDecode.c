
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int GetDWBE (int const*) ;
 int GetDWLE (int const*) ;
 int isfinite (float) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void F32IDecode( void *outp, const uint8_t *in, unsigned samples )
{
    float *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {
        union { float f; uint32_t u; } s;




        s.u = GetDWBE( in );

        if( unlikely(!isfinite(s.f)) )
            s.f = 0.f;
        *(out++) = s.f;
        in += 4;
    }
}
