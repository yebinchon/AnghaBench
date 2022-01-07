
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t zko_attr_count; int zko_kobj; int zko_kobj_type; int ** zko_default_attrs; } ;
typedef TYPE_1__ zfs_mod_kobj_t ;
struct kobject {int dummy; } ;


 int ASSERT (int ) ;
 int kobject_add (int *,struct kobject*,char const*) ;
 int kobject_init (int *,int *) ;

__attribute__((used)) static int
zfs_kobj_add(zfs_mod_kobj_t *zkobj, struct kobject *parent, const char *name)
{

 ASSERT(zkobj->zko_default_attrs != ((void*)0));
 ASSERT(zkobj->zko_default_attrs[zkobj->zko_attr_count] == ((void*)0));

 kobject_init(&zkobj->zko_kobj, &zkobj->zko_kobj_type);
 return (kobject_add(&zkobj->zko_kobj, parent, name));
}
