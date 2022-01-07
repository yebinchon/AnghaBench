
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_5__ {TYPE_2__* db_data; } ;
typedef TYPE_1__ dmu_buf_t ;
struct TYPE_6__ {scalar_t__ bt_begin; scalar_t__ bt_end; } ;
typedef TYPE_2__ bptree_phys_t ;
typedef int boolean_t ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int dmu_bonus_hold (int *,int ,int ,TYPE_1__**) ;
 int dmu_buf_rele (TYPE_1__*,int ) ;

boolean_t
bptree_is_empty(objset_t *os, uint64_t obj)
{
 dmu_buf_t *db;
 bptree_phys_t *bt;
 boolean_t rv;

 VERIFY0(dmu_bonus_hold(os, obj, FTAG, &db));
 bt = db->db_data;
 rv = (bt->bt_begin == bt->bt_end);
 dmu_buf_rele(db, FTAG);
 return (rv);
}
