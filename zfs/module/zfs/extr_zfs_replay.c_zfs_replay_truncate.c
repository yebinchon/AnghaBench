
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int znode_t ;
typedef int zfsvfs_t ;
struct TYPE_6__ {int lr_offset; int lr_length; int lr_foid; } ;
typedef TYPE_1__ lr_truncate_t ;
struct TYPE_7__ {int l_len; int l_start; int l_whence; int l_type; } ;
typedef TYPE_2__ flock64_t ;
typedef int fl ;
typedef scalar_t__ boolean_t ;


 int FOFFMAX ;
 int FWRITE ;
 int F_FREESP ;
 int F_WRLCK ;
 int SEEK_SET ;
 int ZTOI (int *) ;
 int byteswap_uint64_array (TYPE_1__*,int) ;
 int bzero (TYPE_2__*,int) ;
 int iput (int ) ;
 int kcred ;
 int zfs_space (int ,int ,TYPE_2__*,int,int ,int ) ;
 int zfs_zget (int *,int ,int **) ;

__attribute__((used)) static int
zfs_replay_truncate(void *arg1, void *arg2, boolean_t byteswap)
{
 zfsvfs_t *zfsvfs = arg1;
 lr_truncate_t *lr = arg2;
 znode_t *zp;
 flock64_t fl;
 int error;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 if ((error = zfs_zget(zfsvfs, lr->lr_foid, &zp)) != 0)
  return (error);

 bzero(&fl, sizeof (fl));
 fl.l_type = F_WRLCK;
 fl.l_whence = SEEK_SET;
 fl.l_start = lr->lr_offset;
 fl.l_len = lr->lr_length;

 error = zfs_space(ZTOI(zp), F_FREESP, &fl, FWRITE | FOFFMAX,
     lr->lr_offset, kcred);

 iput(ZTOI(zp));

 return (error);
}
