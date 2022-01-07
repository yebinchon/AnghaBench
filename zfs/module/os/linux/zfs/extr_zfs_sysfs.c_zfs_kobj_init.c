
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int release; TYPE_1__* sysfs_ops; int * default_attrs; } ;
struct TYPE_5__ {int show; } ;
struct TYPE_7__ {int zko_attr_count; int zko_child_count; TYPE_2__ zko_kobj_type; TYPE_1__ zko_sysfs_ops; int * zko_attr_list; int * zko_default_attrs; int * zko_children; } ;
typedef TYPE_3__ zfs_mod_kobj_t ;
typedef int sysfs_show_func ;


 int ATTR_TABLE_SIZE (int) ;
 int CHILD_TABLE_SIZE (int) ;
 int DEFAULT_ATTR_SIZE (int) ;
 int ENOMEM ;
 int KM_SLEEP ;
 int kmem_free (int *,int ) ;
 void* kmem_zalloc (int ,int ) ;
 int zfs_kobj_release ;

__attribute__((used)) static int
zfs_kobj_init(zfs_mod_kobj_t *zkobj, int attr_cnt, int child_cnt,
    sysfs_show_func show_func)
{



 if (attr_cnt > 0) {
  zkobj->zko_attr_list = kmem_zalloc(ATTR_TABLE_SIZE(attr_cnt),
      KM_SLEEP);
  if (zkobj->zko_attr_list == ((void*)0))
   return (ENOMEM);
 }

 zkobj->zko_default_attrs = kmem_zalloc(DEFAULT_ATTR_SIZE(attr_cnt),
     KM_SLEEP);
 if (zkobj->zko_default_attrs == ((void*)0)) {
  if (zkobj->zko_attr_list != ((void*)0)) {
   kmem_free(zkobj->zko_attr_list,
       ATTR_TABLE_SIZE(attr_cnt));
  }
  return (ENOMEM);
 }
 zkobj->zko_attr_count = attr_cnt;
 zkobj->zko_kobj_type.default_attrs = zkobj->zko_default_attrs;

 if (child_cnt > 0) {
  zkobj->zko_children = kmem_zalloc(CHILD_TABLE_SIZE(child_cnt),
      KM_SLEEP);
  if (zkobj->zko_children == ((void*)0)) {
   if (zkobj->zko_default_attrs != ((void*)0)) {
    kmem_free(zkobj->zko_default_attrs,
        DEFAULT_ATTR_SIZE(attr_cnt));
   }
   if (zkobj->zko_attr_list != ((void*)0)) {
    kmem_free(zkobj->zko_attr_list,
        ATTR_TABLE_SIZE(attr_cnt));
   }
   return (ENOMEM);
  }
  zkobj->zko_child_count = child_cnt;
 }

 zkobj->zko_sysfs_ops.show = show_func;
 zkobj->zko_kobj_type.sysfs_ops = &zkobj->zko_sysfs_ops;
 zkobj->zko_kobj_type.release = zfs_kobj_release;

 return (0);
}
