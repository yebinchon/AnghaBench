
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 double RAND (int *) ;
 scalar_t__ UINT_MAX ;
 double log (int) ;

__attribute__((used)) static double RAND_exp(U32* seed, double mean)
{
    double const u = RAND(seed) / (double) UINT_MAX;
    return log(1-u) * (-mean);
}
