
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned long the_initial_seed; int* state; int left; int seeded; } ;
typedef TYPE_1__ THGenerator ;


 int THGenerator_copy (TYPE_1__*,TYPE_1__*) ;
 int THGenerator_free (TYPE_1__*) ;
 TYPE_1__* THGenerator_newUnseeded () ;
 int n ;

void THRandom_manualSeed(THGenerator *_generator, unsigned long the_seed_)
{
  int j;


  THGenerator *blank = THGenerator_newUnseeded();
  THGenerator_copy(_generator, blank);
  THGenerator_free(blank);

  _generator->the_initial_seed = the_seed_;
  _generator->state[0] = _generator->the_initial_seed & 0xffffffffUL;
  for(j = 1; j < n; j++)
  {
    _generator->state[j] = (1812433253UL * (_generator->state[j-1] ^ (_generator->state[j-1] >> 30)) + j);




    _generator->state[j] &= 0xffffffffUL;
  }
  _generator->left = 1;
  _generator->seeded = 1;
}
