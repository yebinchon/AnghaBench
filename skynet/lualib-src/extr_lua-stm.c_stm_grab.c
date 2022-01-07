
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_object {int lock; int reference; } ;


 int ATOM_FINC (int *) ;
 int assert (int) ;
 int rwlock_rlock (int *) ;
 int rwlock_runlock (int *) ;

__attribute__((used)) static void
stm_grab(struct stm_object *obj) {
 rwlock_rlock(&obj->lock);
 int ref = ATOM_FINC(&obj->reference);
 rwlock_runlock(&obj->lock);
 assert(ref > 0);
}
