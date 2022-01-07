
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THGenerator ;


 int THRandom_manualSeed (int *,unsigned long) ;
 unsigned long readURandomLong () ;
 scalar_t__ time (int ) ;

unsigned long THRandom_seed(THGenerator *_generator)
{



  unsigned long s = readURandomLong();

  THRandom_manualSeed(_generator, s);
  return s;
}
