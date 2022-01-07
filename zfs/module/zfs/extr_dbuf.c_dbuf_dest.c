
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db_holds; int db_cache_link; int db_changed; int db_rwlock; int db_mtx; } ;
typedef TYPE_1__ dmu_buf_impl_t ;


 int ASSERT (int) ;
 int cv_destroy (int *) ;
 int multilist_link_active (int *) ;
 int mutex_destroy (int *) ;
 int rw_destroy (int *) ;
 int zfs_refcount_destroy (int *) ;

__attribute__((used)) static void
dbuf_dest(void *vdb, void *unused)
{
 dmu_buf_impl_t *db = vdb;
 mutex_destroy(&db->db_mtx);
 rw_destroy(&db->db_rwlock);
 cv_destroy(&db->db_changed);
 ASSERT(!multilist_link_active(&db->db_cache_link));
 zfs_refcount_destroy(&db->db_holds);
}
