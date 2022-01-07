
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long the_initial_seed; } ;
typedef TYPE_1__ THGenerator ;



unsigned long THRandom_initialSeed(THGenerator *_generator)
{
  return _generator->the_initial_seed;
}
