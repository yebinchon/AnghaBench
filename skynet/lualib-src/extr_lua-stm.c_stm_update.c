
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_object {int lock; struct stm_copy* copy; } ;
struct stm_copy {int dummy; } ;
typedef int int32_t ;


 int rwlock_wlock (int *) ;
 int rwlock_wunlock (int *) ;
 struct stm_copy* stm_newcopy (void*,int ) ;
 int stm_releasecopy (struct stm_copy*) ;

__attribute__((used)) static void
stm_update(struct stm_object *obj, void *msg, int32_t sz) {
 struct stm_copy *copy = stm_newcopy(msg, sz);
 rwlock_wlock(&obj->lock);
 struct stm_copy *oldcopy = obj->copy;
 obj->copy = copy;
 rwlock_wunlock(&obj->lock);

 stm_releasecopy(oldcopy);
}
