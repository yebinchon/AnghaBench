
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_object {scalar_t__ reference; int lock; int * copy; } ;


 int assert (int *) ;
 int rwlock_wlock (int *) ;
 int rwlock_wunlock (int *) ;
 int skynet_free (struct stm_object*) ;
 int stm_releasecopy (int *) ;

__attribute__((used)) static void
stm_release(struct stm_object *obj) {
 assert(obj->copy);
 rwlock_wlock(&obj->lock);

 stm_releasecopy(obj->copy);
 obj->copy = ((void*)0);
 if (--obj->reference > 0) {

  rwlock_wunlock(&obj->lock);
  return;
 }

 skynet_free(obj);
}
