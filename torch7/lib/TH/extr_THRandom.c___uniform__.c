
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THGenerator ;


 scalar_t__ THRandom_random (int *) ;

__attribute__((used)) static double __uniform__(THGenerator *_generator)
{

  return (double)THRandom_random(_generator) * (1.0/4294967296.0);
}
