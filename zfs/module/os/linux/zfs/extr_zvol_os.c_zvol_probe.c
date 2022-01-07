
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int zv_state_lock; TYPE_1__* zv_zso; } ;
typedef TYPE_2__ zvol_state_t ;
struct kobject {int dummy; } ;
typedef int dev_t ;
struct TYPE_4__ {int zvo_disk; } ;


 int ASSERT (int) ;
 scalar_t__ MUTEX_HELD (int *) ;
 struct kobject* get_disk_and_module (int ) ;
 int mutex_exit (int *) ;
 TYPE_2__* zvol_find_by_dev (int ) ;

__attribute__((used)) static struct kobject *
zvol_probe(dev_t dev, int *part, void *arg)
{
 zvol_state_t *zv;
 struct kobject *kobj;

 zv = zvol_find_by_dev(dev);
 kobj = zv ? get_disk_and_module(zv->zv_zso->zvo_disk) : ((void*)0);
 ASSERT(zv == ((void*)0) || MUTEX_HELD(&zv->zv_state_lock));
 if (zv)
  mutex_exit(&zv->zv_state_lock);

 return (kobj);
}
