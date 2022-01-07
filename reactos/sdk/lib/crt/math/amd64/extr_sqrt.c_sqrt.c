
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int __m128i ;
struct TYPE_8__ {double* m128d_f64; } ;
typedef TYPE_1__ __m128d ;


 unsigned long long _mm_cvtsi128_si64 (int ) ;
 TYPE_1__ _mm_set_sd (double) ;
 TYPE_1__ _mm_sqrt_pd (TYPE_1__) ;
 TYPE_1__ _mm_sqrt_sd (TYPE_1__,TYPE_1__) ;

double
sqrt (
    double x)
{
    register union
    {
        __m128d x128d;
        __m128i x128i;
    } u ;
    register union
    {
        unsigned long long ullx;
        double dbl;
    } u2;
    u.x128d = _mm_set_sd(x);


    u2.ullx = _mm_cvtsi128_si64(u.x128i);


    if (u2.ullx & 0x8000000000000000ULL)
    {

        if (u2.ullx != 0x8000000000000000ULL)
        {

            u2.ullx = 0xfff8000000000000ULL;
        }


        return u2.dbl;
    }



    if (u2.ullx > 0x7FF0000000000000ULL)
    {

        u2.ullx |= 0x8000000000000ULL;
        return u2.dbl;
    }
    u.x128d = _mm_sqrt_sd(u.x128d, u.x128d);


    return u.x128d.m128d_f64[0];
}
