
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {int z_acl_count; int z_acl_bytes; int z_acl; } ;
typedef TYPE_1__ zfs_acl_t ;
struct TYPE_15__ {int z_ace_data; scalar_t__ z_acl_extern_obj; } ;
typedef TYPE_2__ zfs_acl_phys_t ;
struct TYPE_16__ {int z_ace_count; int z_size; int z_acldata; } ;
typedef TYPE_3__ zfs_acl_node_t ;
struct znode {int z_lock; TYPE_1__* z_acl_cached; int z_sa_hdl; int z_is_sa; int z_acl_lock; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_13__ {int z_os; } ;


 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DMU_READ_PREFETCH ;
 int ECKSUM ;
 int EIO ;
 int MUTEX_HELD (int *) ;
 int SA_ZPL_DACL_ACES (TYPE_11__*) ;
 int SET_ERROR (int ) ;
 TYPE_11__* ZTOZSB (struct znode*) ;
 int bcopy (int ,int ,int) ;
 int dmu_read (int ,scalar_t__,int ,int,int ,int ) ;
 int list_insert_head (int *,TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_lookup (int ,int ,int ,int) ;
 TYPE_1__* zfs_acl_alloc (int) ;
 int zfs_acl_free (TYPE_1__*) ;
 TYPE_3__* zfs_acl_node_alloc (int) ;
 int zfs_acl_node_free (TYPE_3__*) ;
 int zfs_acl_znode_info (struct znode*,int*,int*,TYPE_2__*) ;
 int zfs_znode_acl_version (struct znode*) ;

int
zfs_acl_node_read(struct znode *zp, boolean_t have_lock, zfs_acl_t **aclpp,
    boolean_t will_modify)
{
 zfs_acl_t *aclp;
 int aclsize = 0;
 int acl_count = 0;
 zfs_acl_node_t *aclnode;
 zfs_acl_phys_t znode_acl;
 int version;
 int error;
 boolean_t drop_lock = B_FALSE;

 ASSERT(MUTEX_HELD(&zp->z_acl_lock));

 if (zp->z_acl_cached && !will_modify) {
  *aclpp = zp->z_acl_cached;
  return (0);
 }
 if (!zp->z_is_sa && !have_lock) {
  mutex_enter(&zp->z_lock);
  drop_lock = B_TRUE;
 }
 version = zfs_znode_acl_version(zp);

 if ((error = zfs_acl_znode_info(zp, &aclsize,
     &acl_count, &znode_acl)) != 0) {
  goto done;
 }

 aclp = zfs_acl_alloc(version);

 aclp->z_acl_count = acl_count;
 aclp->z_acl_bytes = aclsize;

 aclnode = zfs_acl_node_alloc(aclsize);
 aclnode->z_ace_count = aclp->z_acl_count;
 aclnode->z_size = aclsize;

 if (!zp->z_is_sa) {
  if (znode_acl.z_acl_extern_obj) {
   error = dmu_read(ZTOZSB(zp)->z_os,
       znode_acl.z_acl_extern_obj, 0, aclnode->z_size,
       aclnode->z_acldata, DMU_READ_PREFETCH);
  } else {
   bcopy(znode_acl.z_ace_data, aclnode->z_acldata,
       aclnode->z_size);
  }
 } else {
  error = sa_lookup(zp->z_sa_hdl, SA_ZPL_DACL_ACES(ZTOZSB(zp)),
      aclnode->z_acldata, aclnode->z_size);
 }

 if (error != 0) {
  zfs_acl_free(aclp);
  zfs_acl_node_free(aclnode);

  if (error == ECKSUM)
   error = SET_ERROR(EIO);
  goto done;
 }

 list_insert_head(&aclp->z_acl, aclnode);

 *aclpp = aclp;
 if (!will_modify)
  zp->z_acl_cached = aclp;
done:
 if (drop_lock)
  mutex_exit(&zp->z_lock);
 return (error);
}
