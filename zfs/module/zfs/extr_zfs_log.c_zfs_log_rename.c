
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int z_id; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
typedef int uint64_t ;
struct TYPE_10__ {int lr_tdoid; int lr_sdoid; } ;
typedef TYPE_2__ lr_rename_t ;
struct TYPE_11__ {int itx_oid; int itx_lr; } ;
typedef TYPE_3__ itx_t ;
typedef int dmu_tx_t ;


 int bcopy (char*,char*,size_t) ;
 int strlen (char*) ;
 int zil_itx_assign (int *,TYPE_3__*,int *) ;
 TYPE_3__* zil_itx_create (int ,int) ;
 scalar_t__ zil_replaying (int *,int *) ;

void
zfs_log_rename(zilog_t *zilog, dmu_tx_t *tx, uint64_t txtype,
    znode_t *sdzp, char *sname, znode_t *tdzp, char *dname, znode_t *szp)
{
 itx_t *itx;
 lr_rename_t *lr;
 size_t snamesize = strlen(sname) + 1;
 size_t dnamesize = strlen(dname) + 1;

 if (zil_replaying(zilog, tx))
  return;

 itx = zil_itx_create(txtype, sizeof (*lr) + snamesize + dnamesize);
 lr = (lr_rename_t *)&itx->itx_lr;
 lr->lr_sdoid = sdzp->z_id;
 lr->lr_tdoid = tdzp->z_id;
 bcopy(sname, (char *)(lr + 1), snamesize);
 bcopy(dname, (char *)(lr + 1) + snamesize, dnamesize);
 itx->itx_oid = szp->z_id;

 zil_itx_assign(zilog, itx, tx);
}
