
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ z_size; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_10__ {int z_log; int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ lr_offset; scalar_t__ lr_length; int lr_foid; } ;
typedef TYPE_3__ lr_write_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int B_FALSE ;
 int ERESTART ;
 int SA_ZPL_SIZE (TYPE_2__*) ;
 int TXG_WAIT ;
 int ZTOI (TYPE_1__*) ;
 int byteswap_uint64_array (TYPE_3__*,int) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int dmu_tx_wait (int *) ;
 int iput (int ) ;
 int sa_update (int ,int ,void*,int,int *) ;
 int zfs_zget (TYPE_2__*,int ,TYPE_1__**) ;
 int zil_replaying (int ,int *) ;

__attribute__((used)) static int
zfs_replay_write2(void *arg1, void *arg2, boolean_t byteswap)
{
 zfsvfs_t *zfsvfs = arg1;
 lr_write_t *lr = arg2;
 znode_t *zp;
 int error;
 uint64_t end;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 if ((error = zfs_zget(zfsvfs, lr->lr_foid, &zp)) != 0)
  return (error);

top:
 end = lr->lr_offset + lr->lr_length;
 if (end > zp->z_size) {
  dmu_tx_t *tx = dmu_tx_create(zfsvfs->z_os);

  zp->z_size = end;
  dmu_tx_hold_sa(tx, zp->z_sa_hdl, B_FALSE);
  error = dmu_tx_assign(tx, TXG_WAIT);
  if (error) {
   iput(ZTOI(zp));
   if (error == ERESTART) {
    dmu_tx_wait(tx);
    dmu_tx_abort(tx);
    goto top;
   }
   dmu_tx_abort(tx);
   return (error);
  }
  (void) sa_update(zp->z_sa_hdl, SA_ZPL_SIZE(zfsvfs),
      (void *)&zp->z_size, sizeof (uint64_t), tx);


  (void) zil_replaying(zfsvfs->z_log, tx);

  dmu_tx_commit(tx);
 }

 iput(ZTOI(zp));

 return (error);
}
