
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int z_pflags; } ;
typedef TYPE_1__ znode_t ;
typedef int cred_t ;
struct TYPE_12__ {int i_mode; } ;


 int ACE_ADD_FILE ;
 int ACE_ADD_SUBDIRECTORY ;
 int B_FALSE ;
 int EACCES ;
 int SET_ERROR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int ZFS_AV_QUARANTINED ;
 TYPE_9__* ZTOI (TYPE_1__*) ;
 int zfs_zaccess (TYPE_1__*,int,int ,int ,int *) ;
 int zfs_zaccess_delete (TYPE_1__*,TYPE_1__*,int *) ;

int
zfs_zaccess_rename(znode_t *sdzp, znode_t *szp, znode_t *tdzp,
    znode_t *tzp, cred_t *cr)
{
 int add_perm;
 int error;

 if (szp->z_pflags & ZFS_AV_QUARANTINED)
  return (SET_ERROR(EACCES));

 add_perm = S_ISDIR(ZTOI(szp)->i_mode) ?
     ACE_ADD_SUBDIRECTORY : ACE_ADD_FILE;
 if ((error = zfs_zaccess_delete(sdzp, szp, cr)))
  return (error);




 if (tzp) {
  if ((error = zfs_zaccess_delete(tdzp, tzp, cr)))
   return (error);
 }




 error = zfs_zaccess(tdzp, add_perm, 0, B_FALSE, cr);

 return (error);
}
