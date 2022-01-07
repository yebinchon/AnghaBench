
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THGenerator ;


 int THFree (int *) ;

void THGenerator_free(THGenerator *self)
{
  THFree(self);
}
