
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int znode_t ;
typedef int zfsvfs_t ;
struct TYPE_4__ {int lrc_txtype; } ;
struct TYPE_5__ {TYPE_1__ lr_common; int lr_tdoid; int lr_sdoid; } ;
typedef TYPE_2__ lr_rename_t ;
typedef scalar_t__ boolean_t ;


 int FIGNORECASE ;
 int TX_CI ;
 int ZTOI (int *) ;
 int byteswap_uint64_array (TYPE_2__*,int) ;
 int iput (int ) ;
 int kcred ;
 int strlen (char*) ;
 int zfs_rename (int ,char*,int ,char*,int ,int) ;
 int zfs_zget (int *,int ,int **) ;

__attribute__((used)) static int
zfs_replay_rename(void *arg1, void *arg2, boolean_t byteswap)
{
 zfsvfs_t *zfsvfs = arg1;
 lr_rename_t *lr = arg2;
 char *sname = (char *)(lr + 1);
 char *tname = sname + strlen(sname) + 1;
 znode_t *sdzp, *tdzp;
 int error;
 int vflg = 0;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 if ((error = zfs_zget(zfsvfs, lr->lr_sdoid, &sdzp)) != 0)
  return (error);

 if ((error = zfs_zget(zfsvfs, lr->lr_tdoid, &tdzp)) != 0) {
  iput(ZTOI(sdzp));
  return (error);
 }

 if (lr->lr_common.lrc_txtype & TX_CI)
  vflg |= FIGNORECASE;

 error = zfs_rename(ZTOI(sdzp), sname, ZTOI(tdzp), tname, kcred, vflg);

 iput(ZTOI(tdzp));
 iput(ZTOI(sdzp));

 return (error);
}
