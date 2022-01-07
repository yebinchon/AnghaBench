
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void dmu_buf_user_t ;
typedef int dmu_buf_t ;
struct TYPE_3__ {void* db_user; int db_mtx; } ;
typedef TYPE_1__ dmu_buf_impl_t ;


 int DBVU_NOT_EVICTING ;
 int dbuf_verify_user (TYPE_1__*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void *
dmu_buf_replace_user(dmu_buf_t *db_fake, dmu_buf_user_t *old_user,
    dmu_buf_user_t *new_user)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

 mutex_enter(&db->db_mtx);
 dbuf_verify_user(db, DBVU_NOT_EVICTING);
 if (db->db_user == old_user)
  db->db_user = new_user;
 else
  old_user = db->db_user;
 dbuf_verify_user(db, DBVU_NOT_EVICTING);
 mutex_exit(&db->db_mtx);

 return (old_user);
}
