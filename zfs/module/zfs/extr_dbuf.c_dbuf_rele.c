
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int db_mtx; } ;
typedef TYPE_1__ dmu_buf_impl_t ;


 int B_FALSE ;
 int dbuf_rele_and_unlock (TYPE_1__*,void*,int ) ;
 int mutex_enter (int *) ;

void
dbuf_rele(dmu_buf_impl_t *db, void *tag)
{
 mutex_enter(&db->db_mtx);
 dbuf_rele_and_unlock(db, tag, B_FALSE);
}
