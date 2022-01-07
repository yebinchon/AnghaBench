
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db_holds; int db_cache_link; int db_changed; int db_rwlock; int db_mtx; } ;
typedef TYPE_1__ dmu_buf_impl_t ;


 int CV_DEFAULT ;
 int MUTEX_DEFAULT ;
 int RW_DEFAULT ;
 int bzero (TYPE_1__*,int) ;
 int cv_init (int *,int *,int ,int *) ;
 int multilist_link_init (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int rw_init (int *,int *,int ,int *) ;
 int zfs_refcount_create (int *) ;

__attribute__((used)) static int
dbuf_cons(void *vdb, void *unused, int kmflag)
{
 dmu_buf_impl_t *db = vdb;
 bzero(db, sizeof (dmu_buf_impl_t));

 mutex_init(&db->db_mtx, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 rw_init(&db->db_rwlock, ((void*)0), RW_DEFAULT, ((void*)0));
 cv_init(&db->db_changed, ((void*)0), CV_DEFAULT, ((void*)0));
 multilist_link_init(&db->db_cache_link);
 zfs_refcount_create(&db->db_holds);

 return (0);
}
