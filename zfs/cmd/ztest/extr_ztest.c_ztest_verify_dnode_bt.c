
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * zd_os; } ;
typedef TYPE_1__ ztest_ds_t ;
struct TYPE_12__ {scalar_t__ bt_magic; int bt_gen; int bt_crtxg; int bt_txg; int bt_offset; } ;
typedef TYPE_2__ ztest_block_tag_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
struct TYPE_13__ {int doi_bonus_size; int doi_dnodesize; } ;
typedef TYPE_3__ dmu_object_info_t ;
typedef int dmu_buf_t ;


 scalar_t__ BT_MAGIC ;
 int FALSE ;
 int FTAG ;
 int RL_READER ;
 scalar_t__ dmu_bonus_hold (int *,scalar_t__,int ,int **) ;
 int dmu_buf_rele (int *,int ) ;
 int dmu_object_info_from_db (int *,TYPE_3__*) ;
 int dmu_object_next (int *,scalar_t__*,int ,int ) ;
 TYPE_2__* ztest_bt_bonus (int *) ;
 int ztest_bt_verify (TYPE_2__*,int *,scalar_t__,int ,int ,int ,int ,int ) ;
 int ztest_object_lock (TYPE_1__*,scalar_t__,int ) ;
 int ztest_object_unlock (TYPE_1__*,scalar_t__) ;
 int ztest_verify_unused_bonus (int *,TYPE_2__*,scalar_t__,int *,int ) ;

void
ztest_verify_dnode_bt(ztest_ds_t *zd, uint64_t id)
{
 objset_t *os = zd->zd_os;
 uint64_t obj;
 int err = 0;

 for (obj = 0; err == 0; err = dmu_object_next(os, &obj, FALSE, 0)) {
  ztest_block_tag_t *bt = ((void*)0);
  dmu_object_info_t doi;
  dmu_buf_t *db;

  ztest_object_lock(zd, obj, RL_READER);
  if (dmu_bonus_hold(os, obj, FTAG, &db) != 0) {
   ztest_object_unlock(zd, obj);
   continue;
  }

  dmu_object_info_from_db(db, &doi);
  if (doi.doi_bonus_size >= sizeof (*bt))
   bt = ztest_bt_bonus(db);

  if (bt && bt->bt_magic == BT_MAGIC) {
   ztest_bt_verify(bt, os, obj, doi.doi_dnodesize,
       bt->bt_offset, bt->bt_gen, bt->bt_txg,
       bt->bt_crtxg);
   ztest_verify_unused_bonus(db, bt, obj, os, bt->bt_gen);
  }

  dmu_buf_rele(db, FTAG);
  ztest_object_unlock(zd, obj);
 }
}
