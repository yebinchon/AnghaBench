
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_4__ {int * resource; } ;
typedef TYPE_1__ sysevent_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int FM_SYSEVENT_CLASS ;
 int KM_SLEEP ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int * zfs_event_create (int *,int *,int ,char const*,int *) ;

sysevent_t *
spa_event_create(spa_t *spa, vdev_t *vd, nvlist_t *hist_nvl, const char *name)
{
 sysevent_t *ev = ((void*)0);
 return (ev);
}
