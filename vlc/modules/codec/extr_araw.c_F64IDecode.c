
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int GetQWBE (int const*) ;
 int GetQWLE (int const*) ;
 int isfinite (double) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void F64IDecode( void *outp, const uint8_t *in, unsigned samples )
{
    double *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {
        union { double d; uint64_t u; } s;




        s.u = GetQWBE( in );

        if( unlikely(!isfinite( s.d )) )
            s.d = 0.;
        *(out++) = s.d;
        in += 8;
    }
}
