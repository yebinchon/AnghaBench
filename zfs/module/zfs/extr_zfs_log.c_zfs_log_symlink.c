
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int z_sa_hdl; int z_mode; int z_id; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
typedef int uint64_t ;
struct TYPE_12__ {int * lr_crtime; int lr_gen; int lr_mode; int lr_gid; int lr_uid; int lr_foid; int lr_doid; } ;
typedef TYPE_2__ lr_create_t ;
struct TYPE_13__ {int itx_lr; } ;
typedef TYPE_3__ itx_t ;
typedef int dmu_tx_t ;


 int KGID_TO_SGID (int ) ;
 int KUID_TO_SUID (int ) ;
 int SA_ZPL_CRTIME (int ) ;
 int SA_ZPL_GEN (int ) ;
 int ZTOGID (TYPE_1__*) ;
 int ZTOUID (TYPE_1__*) ;
 int ZTOZSB (TYPE_1__*) ;
 int bcopy (char*,char*,size_t) ;
 int sa_lookup (int ,int ,int *,int) ;
 int strlen (char*) ;
 int zil_itx_assign (int *,TYPE_3__*,int *) ;
 TYPE_3__* zil_itx_create (int ,int) ;
 scalar_t__ zil_replaying (int *,int *) ;

void
zfs_log_symlink(zilog_t *zilog, dmu_tx_t *tx, uint64_t txtype,
    znode_t *dzp, znode_t *zp, char *name, char *link)
{
 itx_t *itx;
 lr_create_t *lr;
 size_t namesize = strlen(name) + 1;
 size_t linksize = strlen(link) + 1;

 if (zil_replaying(zilog, tx))
  return;

 itx = zil_itx_create(txtype, sizeof (*lr) + namesize + linksize);
 lr = (lr_create_t *)&itx->itx_lr;
 lr->lr_doid = dzp->z_id;
 lr->lr_foid = zp->z_id;
 lr->lr_uid = KUID_TO_SUID(ZTOUID(zp));
 lr->lr_gid = KGID_TO_SGID(ZTOGID(zp));
 lr->lr_mode = zp->z_mode;
 (void) sa_lookup(zp->z_sa_hdl, SA_ZPL_GEN(ZTOZSB(zp)), &lr->lr_gen,
     sizeof (uint64_t));
 (void) sa_lookup(zp->z_sa_hdl, SA_ZPL_CRTIME(ZTOZSB(zp)),
     lr->lr_crtime, sizeof (uint64_t) * 2);
 bcopy(name, (char *)(lr + 1), namesize);
 bcopy(link, (char *)(lr + 1) + namesize, linksize);

 zil_itx_assign(zilog, itx, tx);
}
