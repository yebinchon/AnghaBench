
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_18__ {int z_pflags; int z_size; int z_lock; int z_sa_hdl; void* z_unlinked; int z_id; } ;
typedef TYPE_1__ znode_t ;
typedef int zfsvfs_t ;
struct TYPE_19__ {TYPE_1__* dl_dzp; } ;
typedef TYPE_2__ zfs_dirlock_t ;
typedef int uint64_t ;
typedef int sa_bulk_attr_t ;
typedef int mtime ;
typedef int links ;
typedef int dmu_tx_t ;
typedef int ctime ;
typedef void* boolean_t ;
struct TYPE_17__ {int i_nlink; int i_mode; } ;


 int ASSERT (int) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int CONTENT_MODIFIED ;
 int ENOTEMPTY ;
 int SA_ADD_BULK_ATTR (int *,int,int ,int *,...) ;
 int SA_ZPL_CTIME (int *) ;
 int SA_ZPL_FLAGS (int *) ;
 int SA_ZPL_LINKS (int *) ;
 int SA_ZPL_MTIME (int *) ;
 int SA_ZPL_SIZE (int *) ;
 int SET_ERROR (int ) ;
 int STATE_CHANGED ;
 int S_ISDIR (int ) ;
 int ZRENAMING ;
 TYPE_11__* ZTOI (TYPE_1__*) ;
 int * ZTOZSB (TYPE_1__*) ;
 int clear_nlink (TYPE_11__*) ;
 int drop_nlink (TYPE_11__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_bulk_update (int ,int *,int,int *) ;
 int set_nlink (TYPE_11__*,int) ;
 int zfs_dirempty (TYPE_1__*) ;
 int zfs_dropname (TYPE_2__*,TYPE_1__*,TYPE_1__*,int *,int) ;
 int zfs_panic_recover (char*,int ,int,int) ;
 int zfs_tstamp_update_setup (TYPE_1__*,int ,int*,int*) ;
 int zfs_unlinked_add (TYPE_1__*,int *) ;

int
zfs_link_destroy(zfs_dirlock_t *dl, znode_t *zp, dmu_tx_t *tx, int flag,
    boolean_t *unlinkedp)
{
 znode_t *dzp = dl->dl_dzp;
 zfsvfs_t *zfsvfs = ZTOZSB(dzp);
 int zp_is_dir = S_ISDIR(ZTOI(zp)->i_mode);
 boolean_t unlinked = B_FALSE;
 sa_bulk_attr_t bulk[5];
 uint64_t mtime[2], ctime[2];
 uint64_t links;
 int count = 0;
 int error;

 if (!(flag & ZRENAMING)) {
  mutex_enter(&zp->z_lock);

  if (zp_is_dir && !zfs_dirempty(zp)) {
   mutex_exit(&zp->z_lock);
   return (SET_ERROR(ENOTEMPTY));
  }






  error = zfs_dropname(dl, zp, dzp, tx, flag);
  if (error != 0) {
   mutex_exit(&zp->z_lock);
   return (error);
  }

  if (ZTOI(zp)->i_nlink <= zp_is_dir) {
   zfs_panic_recover("zfs: link count on %lu is %u, "
       "should be at least %u", zp->z_id,
       (int)ZTOI(zp)->i_nlink, zp_is_dir + 1);
   set_nlink(ZTOI(zp), zp_is_dir + 1);
  }
  drop_nlink(ZTOI(zp));
  if (ZTOI(zp)->i_nlink == zp_is_dir) {
   zp->z_unlinked = B_TRUE;
   clear_nlink(ZTOI(zp));
   unlinked = B_TRUE;
  } else {
   SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_CTIME(zfsvfs),
       ((void*)0), &ctime, sizeof (ctime));
   SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_FLAGS(zfsvfs),
       ((void*)0), &zp->z_pflags, sizeof (zp->z_pflags));
   zfs_tstamp_update_setup(zp, STATE_CHANGED, mtime,
       ctime);
  }
  links = ZTOI(zp)->i_nlink;
  SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_LINKS(zfsvfs),
      ((void*)0), &links, sizeof (links));
  error = sa_bulk_update(zp->z_sa_hdl, bulk, count, tx);
  count = 0;
  ASSERT(error == 0);
  mutex_exit(&zp->z_lock);
 } else {
  error = zfs_dropname(dl, zp, dzp, tx, flag);
  if (error != 0)
   return (error);
 }

 mutex_enter(&dzp->z_lock);
 dzp->z_size--;
 if (zp_is_dir)
  drop_nlink(ZTOI(dzp));
 links = ZTOI(dzp)->i_nlink;
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_LINKS(zfsvfs),
     ((void*)0), &links, sizeof (links));
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_SIZE(zfsvfs),
     ((void*)0), &dzp->z_size, sizeof (dzp->z_size));
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_CTIME(zfsvfs),
     ((void*)0), ctime, sizeof (ctime));
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_MTIME(zfsvfs),
     ((void*)0), mtime, sizeof (mtime));
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_FLAGS(zfsvfs),
     ((void*)0), &dzp->z_pflags, sizeof (dzp->z_pflags));
 zfs_tstamp_update_setup(dzp, CONTENT_MODIFIED, mtime, ctime);
 error = sa_bulk_update(dzp->z_sa_hdl, bulk, count, tx);
 ASSERT(error == 0);
 mutex_exit(&dzp->z_lock);

 if (unlinkedp != ((void*)0))
  *unlinkedp = unlinked;
 else if (unlinked)
  zfs_unlinked_add(zp, tx);

 return (0);
}
