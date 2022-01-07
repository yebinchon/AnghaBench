
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int z_lock; int z_sa_hdl; int z_pflags; int z_size; int z_id; int z_mode; scalar_t__ z_unlinked; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_21__ {int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_22__ {int dl_name; TYPE_1__* dl_dzp; } ;
typedef TYPE_3__ zfs_dirlock_t ;
typedef int uint64_t ;
typedef int sa_bulk_attr_t ;
typedef int mtime ;
typedef int links ;
typedef int dmu_tx_t ;
typedef int ctime ;
struct TYPE_23__ {int i_nlink; int i_mode; } ;


 int ASSERT (int) ;
 int CONTENT_MODIFIED ;
 int ENOENT ;
 int SA_ADD_BULK_ATTR (int *,int,int ,int *,int *,int) ;
 int SA_ZPL_CTIME (TYPE_2__*) ;
 int SA_ZPL_FLAGS (TYPE_2__*) ;
 int SA_ZPL_LINKS (TYPE_2__*) ;
 int SA_ZPL_MTIME (TYPE_2__*) ;
 int SA_ZPL_PARENT (TYPE_2__*) ;
 int SA_ZPL_SIZE (TYPE_2__*) ;
 int SET_ERROR (int ) ;
 int STATE_CHANGED ;
 int S_ISDIR (int ) ;
 int ZEXISTS ;
 int ZNEW ;
 int ZRENAMING ;
 TYPE_8__* ZTOI (TYPE_1__*) ;
 TYPE_2__* ZTOZSB (TYPE_1__*) ;
 int drop_nlink (TYPE_8__*) ;
 int inc_nlink (TYPE_8__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_bulk_update (int ,int *,int,int *) ;
 int zap_add (int ,int ,int ,int,int,int *,int *) ;
 int zfs_dirent (TYPE_1__*,int ) ;
 int zfs_tstamp_update_setup (TYPE_1__*,int ,int *,int *) ;

int
zfs_link_create(zfs_dirlock_t *dl, znode_t *zp, dmu_tx_t *tx, int flag)
{
 znode_t *dzp = dl->dl_dzp;
 zfsvfs_t *zfsvfs = ZTOZSB(zp);
 uint64_t value;
 int zp_is_dir = S_ISDIR(ZTOI(zp)->i_mode);
 sa_bulk_attr_t bulk[5];
 uint64_t mtime[2], ctime[2];
 uint64_t links;
 int count = 0;
 int error;

 mutex_enter(&zp->z_lock);

 if (!(flag & ZRENAMING)) {
  if (zp->z_unlinked) {
   ASSERT(!(flag & (ZNEW | ZEXISTS)));
   mutex_exit(&zp->z_lock);
   return (SET_ERROR(ENOENT));
  }
  if (!(flag & ZNEW)) {




   inc_nlink(ZTOI(zp));
   links = ZTOI(zp)->i_nlink;
   SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_LINKS(zfsvfs),
       ((void*)0), &links, sizeof (links));
  }
 }

 value = zfs_dirent(zp, zp->z_mode);
 error = zap_add(ZTOZSB(zp)->z_os, dzp->z_id, dl->dl_name, 8, 1,
     &value, tx);







 if (error != 0) {
  if (!(flag & ZRENAMING) && !(flag & ZNEW))
   drop_nlink(ZTOI(zp));
  mutex_exit(&zp->z_lock);
  return (error);
 }

 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_PARENT(zfsvfs), ((void*)0),
     &dzp->z_id, sizeof (dzp->z_id));
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_FLAGS(zfsvfs), ((void*)0),
     &zp->z_pflags, sizeof (zp->z_pflags));

 if (!(flag & ZNEW)) {
  SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_CTIME(zfsvfs), ((void*)0),
      ctime, sizeof (ctime));
  zfs_tstamp_update_setup(zp, STATE_CHANGED, mtime,
      ctime);
 }
 error = sa_bulk_update(zp->z_sa_hdl, bulk, count, tx);
 ASSERT(error == 0);

 mutex_exit(&zp->z_lock);

 mutex_enter(&dzp->z_lock);
 dzp->z_size++;
 if (zp_is_dir)
  inc_nlink(ZTOI(dzp));
 links = ZTOI(dzp)->i_nlink;
 count = 0;
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_SIZE(zfsvfs), ((void*)0),
     &dzp->z_size, sizeof (dzp->z_size));
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_LINKS(zfsvfs), ((void*)0),
     &links, sizeof (links));
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_MTIME(zfsvfs), ((void*)0),
     mtime, sizeof (mtime));
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_CTIME(zfsvfs), ((void*)0),
     ctime, sizeof (ctime));
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_FLAGS(zfsvfs), ((void*)0),
     &dzp->z_pflags, sizeof (dzp->z_pflags));
 zfs_tstamp_update_setup(dzp, CONTENT_MODIFIED, mtime, ctime);
 error = sa_bulk_update(dzp->z_sa_hdl, bulk, count, tx);
 ASSERT(error == 0);
 mutex_exit(&dzp->z_lock);

 return (0);
}
