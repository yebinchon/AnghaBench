
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zko_child_count; int zko_kobj; struct TYPE_4__* zko_children; } ;
typedef TYPE_1__ zfs_mod_kobj_t ;


 int ASSERT (TYPE_1__*) ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;

__attribute__((used)) static void
zfs_kobj_fini(zfs_mod_kobj_t *zkobj)
{

 if (zkobj->zko_child_count != 0) {
  ASSERT(zkobj->zko_children);
  for (int i = 0; i < zkobj->zko_child_count; i++)
   zfs_kobj_fini(&zkobj->zko_children[i]);
 }


 kobject_del(&zkobj->zko_kobj);
 kobject_put(&zkobj->zko_kobj);
}
