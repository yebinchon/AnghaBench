
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_object {int reference; int copy; int lock; } ;
typedef int int32_t ;


 int rwlock_init (int *) ;
 struct stm_object* skynet_malloc (int) ;
 int stm_newcopy (void*,int ) ;

__attribute__((used)) static struct stm_object *
stm_new(void * msg, int32_t sz) {
 struct stm_object * obj = skynet_malloc(sizeof(*obj));
 rwlock_init(&obj->lock);
 obj->reference = 1;
 obj->copy = stm_newcopy(msg, sz);

 return obj;
}
