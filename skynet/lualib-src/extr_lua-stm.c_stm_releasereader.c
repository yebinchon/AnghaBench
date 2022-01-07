
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_object {int lock; int * copy; int reference; } ;


 scalar_t__ ATOM_DEC (int *) ;
 int assert (int ) ;
 int rwlock_rlock (int *) ;
 int rwlock_runlock (int *) ;
 int skynet_free (struct stm_object*) ;

__attribute__((used)) static void
stm_releasereader(struct stm_object *obj) {
 rwlock_rlock(&obj->lock);
 if (ATOM_DEC(&obj->reference) == 0) {

  assert(obj->copy == ((void*)0));
  skynet_free(obj);
  return;
 }
 rwlock_runlock(&obj->lock);
}
