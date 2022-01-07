
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int znode_t ;
typedef int zfsvfs_t ;
struct TYPE_4__ {int lrc_txtype; } ;
struct TYPE_5__ {TYPE_1__ lr_common; int lr_doid; } ;
typedef TYPE_2__ lr_remove_t ;
typedef scalar_t__ boolean_t ;


 int ENOTSUP ;
 int FIGNORECASE ;
 int SET_ERROR (int ) ;
 int TX_CI ;


 int ZTOI (int *) ;
 int byteswap_uint64_array (TYPE_2__*,int) ;
 int iput (int ) ;
 int kcred ;
 int zfs_remove (int ,char*,int ,int) ;
 int zfs_rmdir (int ,char*,int *,int ,int) ;
 int zfs_zget (int *,int ,int **) ;

__attribute__((used)) static int
zfs_replay_remove(void *arg1, void *arg2, boolean_t byteswap)
{
 zfsvfs_t *zfsvfs = arg1;
 lr_remove_t *lr = arg2;
 char *name = (char *)(lr + 1);
 znode_t *dzp;
 int error;
 int vflg = 0;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 if ((error = zfs_zget(zfsvfs, lr->lr_doid, &dzp)) != 0)
  return (error);

 if (lr->lr_common.lrc_txtype & TX_CI)
  vflg |= FIGNORECASE;

 switch ((int)lr->lr_common.lrc_txtype) {
 case 129:
  error = zfs_remove(ZTOI(dzp), name, kcred, vflg);
  break;
 case 128:
  error = zfs_rmdir(ZTOI(dzp), name, ((void*)0), kcred, vflg);
  break;
 default:
  error = SET_ERROR(ENOTSUP);
 }

 iput(ZTOI(dzp));

 return (error);
}
