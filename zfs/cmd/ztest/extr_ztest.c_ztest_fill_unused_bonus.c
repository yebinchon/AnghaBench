
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_3__ {int * db_data; } ;
typedef TYPE_1__ dmu_buf_t ;


 int ASSERT (int ) ;
 int IS_P2ALIGNED (int,int) ;
 int ZTEST_BONUS_FILL_TOKEN (int ,int ,int ,int) ;
 int dmu_objset_id (int *) ;

void
ztest_fill_unused_bonus(dmu_buf_t *db, void *end, uint64_t obj,
    objset_t *os, uint64_t gen)
{
 uint64_t *bonusp;

 ASSERT(IS_P2ALIGNED((char *)end - (char *)db->db_data, 8));

 for (bonusp = db->db_data; bonusp < (uint64_t *)end; bonusp++) {
  uint64_t token = ZTEST_BONUS_FILL_TOKEN(obj, dmu_objset_id(os),
      gen, bonusp - (uint64_t *)db->db_data);
  *bonusp = token;
 }
}
