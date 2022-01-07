
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THGenerator ;


 double __uniform__ (int *) ;

double THRandom_uniform(THGenerator *_generator, double a, double b)
{
  return(__uniform__(_generator) * (b - a) + a);
}
