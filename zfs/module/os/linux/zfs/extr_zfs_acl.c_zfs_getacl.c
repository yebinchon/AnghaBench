
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int z_pflags; int z_acl_lock; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_17__ {scalar_t__ z_version; int z_acl_bytes; int z_acl; scalar_t__ z_acl_count; } ;
typedef TYPE_2__ zfs_acl_t ;
struct TYPE_18__ {void* z_size; int z_acldata; } ;
typedef TYPE_3__ zfs_acl_node_t ;
struct TYPE_19__ {int vsa_mask; int vsa_aclcnt; size_t vsa_aclentsz; int vsa_aclflags; void* vsa_aclentp; } ;
typedef TYPE_4__ vsecattr_t ;
typedef int ulong_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int cred_t ;
typedef int caddr_t ;
typedef int boolean_t ;
typedef int ace_t ;
typedef int ace_object_t ;




 int ACE_READ_ACL ;


 int ACL_AUTO_INHERIT ;
 int ACL_DEFAULTED ;
 int ACL_PROTECTED ;
 int ASSERT (int) ;
 int B_FALSE ;
 int ENOSYS ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 int VSA_ACE ;
 int VSA_ACECNT ;
 int VSA_ACE_ACLFLAGS ;
 int VSA_ACE_ALLTYPES ;
 int ZFS_ACL_AUTO_INHERIT ;
 int ZFS_ACL_DEFAULTED ;
 int ZFS_ACL_OBJ_ACE ;
 int ZFS_ACL_PROTECTED ;
 scalar_t__ ZFS_ACL_VERSION_FUID ;
 int ZTOZSB (TYPE_1__*) ;
 int bcopy (int ,void*,void*) ;
 void* kmem_alloc (size_t,int ) ;
 TYPE_3__* list_head (int *) ;
 TYPE_3__* list_next (int *,TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 void* zfs_acl_next_ace (TYPE_2__*,void*,int *,int *,int*,int*) ;
 int zfs_acl_node_read (TYPE_1__*,int ,TYPE_2__**,int ) ;
 int zfs_copy_fuid_2_ace (int ,TYPE_2__*,int *,void*,int) ;
 int zfs_zaccess (TYPE_1__*,int ,int ,int ,int *) ;

int
zfs_getacl(znode_t *zp, vsecattr_t *vsecp, boolean_t skipaclchk, cred_t *cr)
{
 zfs_acl_t *aclp;
 ulong_t mask;
 int error;
 int count = 0;
 int largeace = 0;

 mask = vsecp->vsa_mask & (VSA_ACE | VSA_ACECNT |
     VSA_ACE_ACLFLAGS | VSA_ACE_ALLTYPES);

 if (mask == 0)
  return (SET_ERROR(ENOSYS));

 if ((error = zfs_zaccess(zp, ACE_READ_ACL, 0, skipaclchk, cr)))
  return (error);

 mutex_enter(&zp->z_acl_lock);

 error = zfs_acl_node_read(zp, B_FALSE, &aclp, B_FALSE);
 if (error != 0) {
  mutex_exit(&zp->z_acl_lock);
  return (error);
 }




 if ((zp->z_pflags & ZFS_ACL_OBJ_ACE) && !(mask & VSA_ACE_ALLTYPES)) {
  void *zacep = ((void*)0);
  uint64_t who;
  uint32_t access_mask;
  uint16_t type, iflags;

  while ((zacep = zfs_acl_next_ace(aclp, zacep,
      &who, &access_mask, &iflags, &type))) {
   switch (type) {
   case 131:
   case 130:
   case 128:
   case 129:
    largeace++;
    continue;
   default:
    count++;
   }
  }
  vsecp->vsa_aclcnt = count;
 } else
  count = (int)aclp->z_acl_count;

 if (mask & VSA_ACECNT) {
  vsecp->vsa_aclcnt = count;
 }

 if (mask & VSA_ACE) {
  size_t aclsz;

  aclsz = count * sizeof (ace_t) +
      sizeof (ace_object_t) * largeace;

  vsecp->vsa_aclentp = kmem_alloc(aclsz, KM_SLEEP);
  vsecp->vsa_aclentsz = aclsz;

  if (aclp->z_version == ZFS_ACL_VERSION_FUID)
   zfs_copy_fuid_2_ace(ZTOZSB(zp), aclp, cr,
       vsecp->vsa_aclentp, !(mask & VSA_ACE_ALLTYPES));
  else {
   zfs_acl_node_t *aclnode;
   void *start = vsecp->vsa_aclentp;

   for (aclnode = list_head(&aclp->z_acl); aclnode;
       aclnode = list_next(&aclp->z_acl, aclnode)) {
    bcopy(aclnode->z_acldata, start,
        aclnode->z_size);
    start = (caddr_t)start + aclnode->z_size;
   }
   ASSERT((caddr_t)start - (caddr_t)vsecp->vsa_aclentp ==
       aclp->z_acl_bytes);
  }
 }
 if (mask & VSA_ACE_ACLFLAGS) {
  vsecp->vsa_aclflags = 0;
  if (zp->z_pflags & ZFS_ACL_DEFAULTED)
   vsecp->vsa_aclflags |= ACL_DEFAULTED;
  if (zp->z_pflags & ZFS_ACL_PROTECTED)
   vsecp->vsa_aclflags |= ACL_PROTECTED;
  if (zp->z_pflags & ZFS_ACL_AUTO_INHERIT)
   vsecp->vsa_aclflags |= ACL_AUTO_INHERIT;
 }

 mutex_exit(&zp->z_acl_lock);

 return (0);
}
