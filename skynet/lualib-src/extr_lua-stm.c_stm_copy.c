
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_object {int lock; struct stm_copy* copy; } ;
struct stm_copy {int reference; } ;


 int ATOM_FINC (int *) ;
 int assert (int) ;
 int rwlock_rlock (int *) ;
 int rwlock_runlock (int *) ;

__attribute__((used)) static struct stm_copy *
stm_copy(struct stm_object *obj) {
 rwlock_rlock(&obj->lock);
 struct stm_copy * ret = obj->copy;
 if (ret) {
  int ref = ATOM_FINC(&ret->reference);
  assert(ref > 0);
 }
 rwlock_runlock(&obj->lock);

 return ret;
}
