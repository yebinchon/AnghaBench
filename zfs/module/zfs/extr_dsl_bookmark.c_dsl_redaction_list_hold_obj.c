
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_15__ {int rl_dbu; TYPE_3__* rl_dbuf; int rl_longholds; int * rl_mos; int rl_phys; int rl_object; } ;
typedef TYPE_1__ redaction_list_t ;
typedef int objset_t ;
struct TYPE_16__ {int * dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_17__ {int db_data; } ;
typedef TYPE_3__ dmu_buf_t ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int dmu_bonus_hold (int *,int ,void*,TYPE_3__**) ;
 TYPE_1__* dmu_buf_get_user (TYPE_3__*) ;
 int dmu_buf_init_user (int *,int ,int *,TYPE_3__**) ;
 TYPE_1__* dmu_buf_set_user_ie (TYPE_3__*,int *) ;
 int dsl_pool_config_held (TYPE_2__*) ;
 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int redaction_list_evict_sync ;
 int zfs_refcount_create (int *) ;

int
dsl_redaction_list_hold_obj(dsl_pool_t *dp, uint64_t rlobj, void *tag,
    redaction_list_t **rlp)
{
 objset_t *mos = dp->dp_meta_objset;
 dmu_buf_t *dbuf;
 redaction_list_t *rl;
 int err;

 ASSERT(dsl_pool_config_held(dp));

 err = dmu_bonus_hold(mos, rlobj, tag, &dbuf);
 if (err != 0)
  return (err);

 rl = dmu_buf_get_user(dbuf);
 if (rl == ((void*)0)) {
  redaction_list_t *winner = ((void*)0);

  rl = kmem_zalloc(sizeof (redaction_list_t), KM_SLEEP);
  rl->rl_dbuf = dbuf;
  rl->rl_object = rlobj;
  rl->rl_phys = dbuf->db_data;
  rl->rl_mos = dp->dp_meta_objset;
  zfs_refcount_create(&rl->rl_longholds);
  dmu_buf_init_user(&rl->rl_dbu, redaction_list_evict_sync, ((void*)0),
      &rl->rl_dbuf);
  if ((winner = dmu_buf_set_user_ie(dbuf, &rl->rl_dbu)) != ((void*)0)) {
   kmem_free(rl, sizeof (*rl));
   rl = winner;
  }
 }
 *rlp = rl;
 return (0);
}
