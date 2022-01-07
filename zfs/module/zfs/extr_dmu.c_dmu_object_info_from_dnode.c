
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dn_struct_rwlock; int dn_mtx; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_object_info_t ;


 int RW_READER ;
 int __dmu_object_info_from_dnode (TYPE_1__*,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

void
dmu_object_info_from_dnode(dnode_t *dn, dmu_object_info_t *doi)
{
 rw_enter(&dn->dn_struct_rwlock, RW_READER);
 mutex_enter(&dn->dn_mtx);

 __dmu_object_info_from_dnode(dn, doi);

 mutex_exit(&dn->dn_mtx);
 rw_exit(&dn->dn_struct_rwlock);
}
