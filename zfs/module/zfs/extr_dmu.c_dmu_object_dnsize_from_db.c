
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dn_num_slots; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;


 TYPE_1__* DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 int DNODE_SHIFT ;

void
dmu_object_dnsize_from_db(dmu_buf_t *db_fake, int *dnsize)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
 dnode_t *dn;

 DB_DNODE_ENTER(db);
 dn = DB_DNODE(db);
 *dnsize = dn->dn_num_slots << DNODE_SHIFT;
 DB_DNODE_EXIT(db);
}
