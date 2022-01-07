
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int znode_t ;
struct TYPE_3__ {scalar_t__ z_replay; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint32_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 TYPE_1__* ZTOZSB (int *) ;
 int zfs_zaccess_aces_check (int *,scalar_t__*,scalar_t__,int *) ;
 int zfs_zaccess_dataset_check (int *,scalar_t__) ;

__attribute__((used)) static int
zfs_zaccess_common(znode_t *zp, uint32_t v4_mode, uint32_t *working_mode,
    boolean_t *check_privs, boolean_t skipaclchk, cred_t *cr)
{
 zfsvfs_t *zfsvfs = ZTOZSB(zp);
 int err;

 *working_mode = v4_mode;
 *check_privs = B_TRUE;




 if (v4_mode == 0 || zfsvfs->z_replay) {
  *working_mode = 0;
  return (0);
 }

 if ((err = zfs_zaccess_dataset_check(zp, v4_mode)) != 0) {
  *check_privs = B_FALSE;
  return (err);
 }






 if (skipaclchk) {
  *working_mode = 0;
  return (0);
 }

 return (zfs_zaccess_aces_check(zp, working_mode, B_FALSE, cr));
}
