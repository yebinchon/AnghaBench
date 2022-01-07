
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


struct TYPE_19__ {int z_sa_hdl; int z_id; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_20__ {int z_unlinkedobj; int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_21__ {int * dl_name; TYPE_1__* dl_dzp; } ;
typedef TYPE_3__ zfs_dirlock_t ;
typedef int zap_cursor_t ;
struct TYPE_22__ {int * za_name; int za_first_integer; } ;
typedef TYPE_4__ zap_attribute_t ;
typedef int dmu_tx_t ;
typedef int dl ;
struct TYPE_18__ {int i_mode; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int ENOENT ;
 int FALSE ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int TXG_WAIT ;
 int ZFS_DIRENT_OBJ (int ) ;
 TYPE_11__* ZTOI (TYPE_1__*) ;
 TYPE_2__* ZTOZSB (TYPE_1__*) ;
 int bzero (TYPE_3__*,int) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_sa (int *,int ,int ) ;
 int dmu_tx_hold_zap (int *,int ,int ,int *) ;
 int dmu_tx_mark_netfree (int *) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int ,int ) ;
 int zap_cursor_retrieve (int *,TYPE_4__*) ;
 int zfs_iput_async (TYPE_11__*) ;
 int zfs_link_destroy (TYPE_3__*,TYPE_1__*,int *,int ,int *) ;
 int zfs_sa_upgrade_txholds (int *,TYPE_1__*) ;
 int zfs_zget (TYPE_2__*,int ,TYPE_1__**) ;

__attribute__((used)) static int
zfs_purgedir(znode_t *dzp)
{
 zap_cursor_t zc;
 zap_attribute_t zap;
 znode_t *xzp;
 dmu_tx_t *tx;
 zfsvfs_t *zfsvfs = ZTOZSB(dzp);
 zfs_dirlock_t dl;
 int skipped = 0;
 int error;

 for (zap_cursor_init(&zc, zfsvfs->z_os, dzp->z_id);
     (error = zap_cursor_retrieve(&zc, &zap)) == 0;
     zap_cursor_advance(&zc)) {
  error = zfs_zget(zfsvfs,
      ZFS_DIRENT_OBJ(zap.za_first_integer), &xzp);
  if (error) {
   skipped += 1;
   continue;
  }

  ASSERT(S_ISREG(ZTOI(xzp)->i_mode) ||
      S_ISLNK(ZTOI(xzp)->i_mode));

  tx = dmu_tx_create(zfsvfs->z_os);
  dmu_tx_hold_sa(tx, dzp->z_sa_hdl, B_FALSE);
  dmu_tx_hold_zap(tx, dzp->z_id, FALSE, zap.za_name);
  dmu_tx_hold_sa(tx, xzp->z_sa_hdl, B_FALSE);
  dmu_tx_hold_zap(tx, zfsvfs->z_unlinkedobj, FALSE, ((void*)0));

  zfs_sa_upgrade_txholds(tx, xzp);
  dmu_tx_mark_netfree(tx);
  error = dmu_tx_assign(tx, TXG_WAIT);
  if (error) {
   dmu_tx_abort(tx);
   zfs_iput_async(ZTOI(xzp));
   skipped += 1;
   continue;
  }
  bzero(&dl, sizeof (dl));
  dl.dl_dzp = dzp;
  dl.dl_name = zap.za_name;

  error = zfs_link_destroy(&dl, xzp, tx, 0, ((void*)0));
  if (error)
   skipped += 1;
  dmu_tx_commit(tx);

  zfs_iput_async(ZTOI(xzp));
 }
 zap_cursor_fini(&zc);
 if (error != ENOENT)
  skipped += 1;
 return (skipped);
}
