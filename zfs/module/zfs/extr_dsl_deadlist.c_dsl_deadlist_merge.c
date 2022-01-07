
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_13__ {int za_first_integer; int za_name; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
struct TYPE_14__ {int dl_lock; int dl_os; } ;
typedef TYPE_2__ dsl_deadlist_t ;
typedef int dsl_deadlist_phys_t ;
typedef int dmu_tx_t ;
struct TYPE_15__ {scalar_t__ doi_type; } ;
typedef TYPE_3__ dmu_object_info_t ;
struct TYPE_16__ {int * db_data; } ;
typedef TYPE_4__ dmu_buf_t ;
typedef int bpobj_t ;


 scalar_t__ DMU_OT_BPOBJ ;
 int FTAG ;
 int VERIFY0 (int ) ;
 int bpobj_close (int *) ;
 int bpobj_iterate (int *,int ,TYPE_2__*,int *) ;
 int bpobj_open (int *,int ,int ) ;
 int bzero (int *,int) ;
 int dmu_bonus_hold (int ,int ,int ,TYPE_4__**) ;
 int dmu_buf_rele (TYPE_4__*,int ) ;
 int dmu_buf_will_dirty (TYPE_4__*,int *) ;
 int dmu_object_info (int ,int ,TYPE_3__*) ;
 int dsl_deadlist_insert_bpobj (TYPE_2__*,int ,int ,int *) ;
 int dsl_deadlist_insert_cb ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int ,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_remove_int (int ,int ,int ,int *) ;
 int zfs_strtonum (int ,int *) ;

void
dsl_deadlist_merge(dsl_deadlist_t *dl, uint64_t obj, dmu_tx_t *tx)
{
 zap_cursor_t zc;
 zap_attribute_t za;
 dmu_buf_t *bonus;
 dsl_deadlist_phys_t *dlp;
 dmu_object_info_t doi;

 VERIFY0(dmu_object_info(dl->dl_os, obj, &doi));
 if (doi.doi_type == DMU_OT_BPOBJ) {
  bpobj_t bpo;
  VERIFY0(bpobj_open(&bpo, dl->dl_os, obj));
  VERIFY0(bpobj_iterate(&bpo, dsl_deadlist_insert_cb, dl, tx));
  bpobj_close(&bpo);
  return;
 }

 mutex_enter(&dl->dl_lock);
 for (zap_cursor_init(&zc, dl->dl_os, obj);
     zap_cursor_retrieve(&zc, &za) == 0;
     zap_cursor_advance(&zc)) {
  uint64_t mintxg = zfs_strtonum(za.za_name, ((void*)0));
  dsl_deadlist_insert_bpobj(dl, za.za_first_integer, mintxg, tx);
  VERIFY0(zap_remove_int(dl->dl_os, obj, mintxg, tx));
 }
 zap_cursor_fini(&zc);

 VERIFY0(dmu_bonus_hold(dl->dl_os, obj, FTAG, &bonus));
 dlp = bonus->db_data;
 dmu_buf_will_dirty(bonus, tx);
 bzero(dlp, sizeof (*dlp));
 dmu_buf_rele(bonus, FTAG);
 mutex_exit(&dl->dl_lock);
}
