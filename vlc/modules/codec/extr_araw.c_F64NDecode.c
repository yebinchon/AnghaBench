
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int isfinite (double) ;
 int memcpy (double*,int const*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void F64NDecode( void *outp, const uint8_t *in, unsigned samples )
{
    double *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {
        memcpy( out, in, sizeof(double) );
        if( unlikely(!isfinite( *out )) )
            *out = 0.;
        out++;
        in += sizeof(double);
    }
}
