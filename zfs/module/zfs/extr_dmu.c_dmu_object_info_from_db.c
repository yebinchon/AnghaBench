
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_object_info_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 int DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 int dmu_object_info_from_dnode (int ,int *) ;

void
dmu_object_info_from_db(dmu_buf_t *db_fake, dmu_object_info_t *doi)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

 DB_DNODE_ENTER(db);
 dmu_object_info_from_dnode(DB_DNODE(db), doi);
 DB_DNODE_EXIT(db);
}
