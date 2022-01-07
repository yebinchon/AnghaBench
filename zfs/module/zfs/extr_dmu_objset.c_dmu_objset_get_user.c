
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* os_user_ptr; int os_user_ptr_lock; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;

void *
dmu_objset_get_user(objset_t *os)
{
 ASSERT(MUTEX_HELD(&os->os_user_ptr_lock));
 return (os->os_user_ptr);
}
