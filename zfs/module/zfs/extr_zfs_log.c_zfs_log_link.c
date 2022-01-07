
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int z_id; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
typedef int uint64_t ;
struct TYPE_9__ {int lr_link_obj; int lr_doid; } ;
typedef TYPE_2__ lr_link_t ;
struct TYPE_10__ {int itx_lr; } ;
typedef TYPE_3__ itx_t ;
typedef int dmu_tx_t ;


 int bcopy (char*,char*,size_t) ;
 int strlen (char*) ;
 int zil_itx_assign (int *,TYPE_3__*,int *) ;
 TYPE_3__* zil_itx_create (int ,int) ;
 scalar_t__ zil_replaying (int *,int *) ;

void
zfs_log_link(zilog_t *zilog, dmu_tx_t *tx, uint64_t txtype,
    znode_t *dzp, znode_t *zp, char *name)
{
 itx_t *itx;
 lr_link_t *lr;
 size_t namesize = strlen(name) + 1;

 if (zil_replaying(zilog, tx))
  return;

 itx = zil_itx_create(txtype, sizeof (*lr) + namesize);
 lr = (lr_link_t *)&itx->itx_lr;
 lr->lr_doid = dzp->z_id;
 lr->lr_link_obj = zp->z_id;
 bcopy(name, (char *)(lr + 1), namesize);

 zil_itx_assign(zilog, itx, tx);
}
