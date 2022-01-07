
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int * spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;


 int DMU_POOL_DELETED_CLONES ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int ENOENT ;
 int dump_livelist_cb ;
 int iterate_deleted_livelists (TYPE_1__*,int ,int *) ;
 int mos_obj_refd (int ) ;
 int zap_lookup (int *,int ,int ,int,int,int *) ;

__attribute__((used)) static void
deleted_livelists_dump_mos(spa_t *spa)
{
 uint64_t zap_obj;
 objset_t *mos = spa->spa_meta_objset;
 int err = zap_lookup(mos, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_DELETED_CLONES, sizeof (uint64_t), 1, &zap_obj);
 if (err == ENOENT)
  return;
 mos_obj_refd(zap_obj);
 iterate_deleted_livelists(spa, dump_livelist_cb, ((void*)0));
}
