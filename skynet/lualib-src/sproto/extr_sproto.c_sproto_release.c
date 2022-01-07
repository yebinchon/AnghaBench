
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto {int memory; } ;


 int pool_release (int *) ;

void
sproto_release(struct sproto * s) {
 if (s == ((void*)0))
  return;
 pool_release(&s->memory);
}
