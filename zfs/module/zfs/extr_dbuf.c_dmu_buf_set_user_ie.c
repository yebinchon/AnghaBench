
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dmu_buf_user_t ;
typedef int dmu_buf_t ;
struct TYPE_2__ {int db_user_immediate_evict; } ;
typedef TYPE_1__ dmu_buf_impl_t ;


 int TRUE ;
 void* dmu_buf_set_user (int *,int *) ;

void *
dmu_buf_set_user_ie(dmu_buf_t *db_fake, dmu_buf_user_t *user)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

 db->db_user_immediate_evict = TRUE;
 return (dmu_buf_set_user(db_fake, user));
}
