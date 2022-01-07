
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THGenerator ;


 scalar_t__ __uniform__ (int *) ;
 int log (scalar_t__) ;

double THRandom_exponential(THGenerator *_generator, double lambda)
{
  return(-1. / lambda * log(1-__uniform__(_generator)));
}
