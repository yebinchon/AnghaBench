
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THGenerator ;


 double M_PI ;
 double __uniform__ (int *) ;
 double tan (double) ;

double THRandom_cauchy(THGenerator *_generator, double median, double sigma)
{
  return(median + sigma * tan(M_PI*(__uniform__(_generator)-0.5)));
}
