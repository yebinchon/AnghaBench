
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int lock; } ;


 TYPE_1__* H ;
 char* _insert_name (TYPE_1__*,char const*,int ) ;
 int rwlock_wlock (int *) ;
 int rwlock_wunlock (int *) ;

const char *
skynet_handle_namehandle(uint32_t handle, const char *name) {
 rwlock_wlock(&H->lock);

 const char * ret = _insert_name(H, name, handle);

 rwlock_wunlock(&H->lock);

 return ret;
}
