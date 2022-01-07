
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THGenerator ;


 int THArgCheck (int,int,char*) ;
 double __uniform__ (int *) ;
 int log (double) ;

int THRandom_geometric(THGenerator *_generator, double p)
{
  THArgCheck(p > 0 && p < 1, 1, "must be > 0 and < 1");
  return((int)(log(1-__uniform__(_generator)) / log(p)) + 1);
}
