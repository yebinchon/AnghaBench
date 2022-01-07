
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zv_open_count; int zv_state_lock; int zv_suspend_ref; int zv_suspend_lock; } ;
typedef TYPE_1__ zvol_state_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 int RW_WRITE_HELD (int *) ;
 int atomic_inc (int *) ;
 int mutex_exit (int *) ;
 TYPE_1__* zvol_find_by_name (char const*,int ) ;
 int zvol_shutdown_zv (TYPE_1__*) ;

zvol_state_t *
zvol_suspend(const char *name)
{
 zvol_state_t *zv;

 zv = zvol_find_by_name(name, RW_WRITER);

 if (zv == ((void*)0))
  return (((void*)0));


 ASSERT(MUTEX_HELD(&zv->zv_state_lock));
 ASSERT(RW_WRITE_HELD(&zv->zv_suspend_lock));

 atomic_inc(&zv->zv_suspend_ref);

 if (zv->zv_open_count > 0)
  zvol_shutdown_zv(zv);





 mutex_exit(&zv->zv_state_lock);


 return (zv);
}
