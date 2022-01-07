
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_copy {struct stm_copy* msg; int reference; } ;


 scalar_t__ ATOM_DEC (int *) ;
 int skynet_free (struct stm_copy*) ;

__attribute__((used)) static void
stm_releasecopy(struct stm_copy *copy) {
 if (copy == ((void*)0))
  return;
 if (ATOM_DEC(&copy->reference) == 0) {
  skynet_free(copy->msg);
  skynet_free(copy);
 }
}
