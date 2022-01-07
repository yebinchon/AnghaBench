
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zl_os; int zl_replaying_seq; } ;
typedef TYPE_1__ zilog_t ;
typedef int u_longlong_t ;
struct TYPE_6__ {int lrc_txtype; scalar_t__ lrc_seq; } ;
typedef TYPE_2__ lr_t ;


 int CE_WARN ;
 int TX_CI ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int cmn_err (int ,char*,int,char*,int ,int ,char*) ;
 int dmu_objset_name (int ,char*) ;

__attribute__((used)) static int
zil_replay_error(zilog_t *zilog, lr_t *lr, int error)
{
 char name[ZFS_MAX_DATASET_NAME_LEN];

 zilog->zl_replaying_seq--;

 dmu_objset_name(zilog->zl_os, name);

 cmn_err(CE_WARN, "ZFS replay transaction error %d, "
     "dataset %s, seq 0x%llx, txtype %llu %s\n", error, name,
     (u_longlong_t)lr->lrc_seq,
     (u_longlong_t)(lr->lrc_txtype & ~TX_CI),
     (lr->lrc_txtype & TX_CI) ? "CI" : "");

 return (error);
}
