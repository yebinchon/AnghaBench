
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_12__ ;


struct TYPE_25__ {int z_pflags; scalar_t__ z_id; scalar_t__ z_blksz; int z_sa_hdl; int z_lock; int z_projid; int z_mode; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_26__ {scalar_t__ z_root; int z_max_blksz; scalar_t__ z_use_fuids; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int xvattr_t ;
struct TYPE_27__ {int xoa_archive; int xoa_readonly; int xoa_system; int xoa_hidden; int xoa_nounlink; int xoa_immutable; int xoa_appendonly; int xoa_nodump; int xoa_opaque; int xoa_av_quarantined; int xoa_av_modified; int xoa_reparse; int xoa_offline; int xoa_sparse; int xoa_projinherit; int xoa_projid; int xoa_generation; int xoa_createtime; } ;
typedef TYPE_4__ xoptattr_t ;
struct TYPE_28__ {scalar_t__ va_nodeid; int va_blksize; int va_nblocks; int va_ctime; int va_mtime; int va_atime; int va_seq; int va_rdev; int va_size; int va_nlink; int va_fsid; int va_mode; int va_type; int va_uid; int va_gid; } ;
typedef TYPE_5__ vattr_t ;
typedef scalar_t__ uint64_t ;
typedef int times ;
struct inode {int i_generation; int i_mode; int i_rdev; } ;
typedef int sa_bulk_attr_t ;
typedef int cred_t ;
typedef int boolean_t ;
struct TYPE_24__ {int s_dev; } ;
struct TYPE_23__ {scalar_t__ i_nlink; TYPE_1__* i_sb; } ;


 int ACE_READ_ATTRIBUTES ;
 int ATTR_NOACLCHECK ;
 int B_FALSE ;
 int B_TRUE ;
 TYPE_2__* ITOZ (struct inode*) ;
 TYPE_3__* ITOZSB (struct inode*) ;
 int MIN (scalar_t__,int ) ;
 int SA_ADD_BULK_ATTR (int *,int,int ,int *,scalar_t__**,int) ;
 int SA_ZPL_ATIME (TYPE_3__*) ;
 int SA_ZPL_CRTIME (TYPE_3__*) ;
 int SA_ZPL_CTIME (TYPE_3__*) ;
 int SA_ZPL_MTIME (TYPE_3__*) ;
 scalar_t__ S_ISREG (int ) ;
 int XAT_APPENDONLY ;
 int XAT_ARCHIVE ;
 int XAT_AV_MODIFIED ;
 int XAT_AV_QUARANTINED ;
 int XAT_AV_SCANSTAMP ;
 int XAT_CREATETIME ;
 int XAT_GEN ;
 int XAT_HIDDEN ;
 int XAT_IMMUTABLE ;
 int XAT_NODUMP ;
 int XAT_NOUNLINK ;
 int XAT_OFFLINE ;
 int XAT_OPAQUE ;
 int XAT_PROJID ;
 int XAT_PROJINHERIT ;
 int XAT_READONLY ;
 int XAT_REPARSE ;
 int XAT_SPARSE ;
 int XAT_SYSTEM ;
 scalar_t__ XVA_ISSET_REQ (int *,int ) ;
 int XVA_SET_RTN (int *,int ) ;
 int ZFS_ACL_TRIVIAL ;
 int ZFS_APPENDONLY ;
 int ZFS_ARCHIVE ;
 int ZFS_AV_MODIFIED ;
 int ZFS_AV_QUARANTINED ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 int ZFS_HIDDEN ;
 int ZFS_IMMUTABLE ;
 int ZFS_LINK_MAX ;
 int ZFS_NODUMP ;
 int ZFS_NOUNLINK ;
 int ZFS_OFFLINE ;
 int ZFS_OPAQUE ;
 int ZFS_PROJINHERIT ;
 int ZFS_READONLY ;
 int ZFS_REPARSE ;
 int ZFS_SPARSE ;
 int ZFS_SYSTEM ;
 int ZFS_TIME_DECODE (int *,scalar_t__*) ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 TYPE_12__* ZTOI (TYPE_2__*) ;
 int crgetuid (int *) ;
 int i_size_read (struct inode*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_bulk_lookup (int ,int *,int) ;
 int sa_lookup (int ,int ,scalar_t__*,int) ;
 int sa_object_size (int ,int *,int *) ;
 int vn_mode_to_vtype (int ) ;
 TYPE_4__* xva_getxoptattr (int *) ;
 int zfs_fuid_map_ids (TYPE_2__*,int *,int *,int *) ;
 int zfs_sa_get_scanstamp (TYPE_2__*,int *) ;
 scalar_t__ zfs_show_ctldir (TYPE_2__*) ;
 int zfs_zaccess (TYPE_2__*,int ,int ,int ,int *) ;

int
zfs_getattr(struct inode *ip, vattr_t *vap, int flags, cred_t *cr)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 int error = 0;
 uint64_t links;
 uint64_t atime[2], mtime[2], ctime[2];
 xvattr_t *xvap = (xvattr_t *)vap;
 xoptattr_t *xoap = ((void*)0);
 boolean_t skipaclchk = (flags & ATTR_NOACLCHECK) ? B_TRUE : B_FALSE;
 sa_bulk_attr_t bulk[3];
 int count = 0;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 zfs_fuid_map_ids(zp, cr, &vap->va_uid, &vap->va_gid);

 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_ATIME(zfsvfs), ((void*)0), &atime, 16);
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_MTIME(zfsvfs), ((void*)0), &mtime, 16);
 SA_ADD_BULK_ATTR(bulk, count, SA_ZPL_CTIME(zfsvfs), ((void*)0), &ctime, 16);

 if ((error = sa_bulk_lookup(zp->z_sa_hdl, bulk, count)) != 0) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }






 if (!(zp->z_pflags & ZFS_ACL_TRIVIAL) &&
     (vap->va_uid != crgetuid(cr))) {
  if ((error = zfs_zaccess(zp, ACE_READ_ATTRIBUTES, 0,
      skipaclchk, cr))) {
   ZFS_EXIT(zfsvfs);
   return (error);
  }
 }






 mutex_enter(&zp->z_lock);
 vap->va_type = vn_mode_to_vtype(zp->z_mode);
 vap->va_mode = zp->z_mode;
 vap->va_fsid = ZTOI(zp)->i_sb->s_dev;
 vap->va_nodeid = zp->z_id;
 if ((zp->z_id == zfsvfs->z_root) && zfs_show_ctldir(zp))
  links = ZTOI(zp)->i_nlink + 1;
 else
  links = ZTOI(zp)->i_nlink;
 vap->va_nlink = MIN(links, ZFS_LINK_MAX);
 vap->va_size = i_size_read(ip);
 vap->va_rdev = ip->i_rdev;
 vap->va_seq = ip->i_generation;





 if ((xoap = xva_getxoptattr(xvap)) != ((void*)0) && zfsvfs->z_use_fuids) {
  if (XVA_ISSET_REQ(xvap, XAT_ARCHIVE)) {
   xoap->xoa_archive =
       ((zp->z_pflags & ZFS_ARCHIVE) != 0);
   XVA_SET_RTN(xvap, XAT_ARCHIVE);
  }

  if (XVA_ISSET_REQ(xvap, XAT_READONLY)) {
   xoap->xoa_readonly =
       ((zp->z_pflags & ZFS_READONLY) != 0);
   XVA_SET_RTN(xvap, XAT_READONLY);
  }

  if (XVA_ISSET_REQ(xvap, XAT_SYSTEM)) {
   xoap->xoa_system =
       ((zp->z_pflags & ZFS_SYSTEM) != 0);
   XVA_SET_RTN(xvap, XAT_SYSTEM);
  }

  if (XVA_ISSET_REQ(xvap, XAT_HIDDEN)) {
   xoap->xoa_hidden =
       ((zp->z_pflags & ZFS_HIDDEN) != 0);
   XVA_SET_RTN(xvap, XAT_HIDDEN);
  }

  if (XVA_ISSET_REQ(xvap, XAT_NOUNLINK)) {
   xoap->xoa_nounlink =
       ((zp->z_pflags & ZFS_NOUNLINK) != 0);
   XVA_SET_RTN(xvap, XAT_NOUNLINK);
  }

  if (XVA_ISSET_REQ(xvap, XAT_IMMUTABLE)) {
   xoap->xoa_immutable =
       ((zp->z_pflags & ZFS_IMMUTABLE) != 0);
   XVA_SET_RTN(xvap, XAT_IMMUTABLE);
  }

  if (XVA_ISSET_REQ(xvap, XAT_APPENDONLY)) {
   xoap->xoa_appendonly =
       ((zp->z_pflags & ZFS_APPENDONLY) != 0);
   XVA_SET_RTN(xvap, XAT_APPENDONLY);
  }

  if (XVA_ISSET_REQ(xvap, XAT_NODUMP)) {
   xoap->xoa_nodump =
       ((zp->z_pflags & ZFS_NODUMP) != 0);
   XVA_SET_RTN(xvap, XAT_NODUMP);
  }

  if (XVA_ISSET_REQ(xvap, XAT_OPAQUE)) {
   xoap->xoa_opaque =
       ((zp->z_pflags & ZFS_OPAQUE) != 0);
   XVA_SET_RTN(xvap, XAT_OPAQUE);
  }

  if (XVA_ISSET_REQ(xvap, XAT_AV_QUARANTINED)) {
   xoap->xoa_av_quarantined =
       ((zp->z_pflags & ZFS_AV_QUARANTINED) != 0);
   XVA_SET_RTN(xvap, XAT_AV_QUARANTINED);
  }

  if (XVA_ISSET_REQ(xvap, XAT_AV_MODIFIED)) {
   xoap->xoa_av_modified =
       ((zp->z_pflags & ZFS_AV_MODIFIED) != 0);
   XVA_SET_RTN(xvap, XAT_AV_MODIFIED);
  }

  if (XVA_ISSET_REQ(xvap, XAT_AV_SCANSTAMP) &&
      S_ISREG(ip->i_mode)) {
   zfs_sa_get_scanstamp(zp, xvap);
  }

  if (XVA_ISSET_REQ(xvap, XAT_CREATETIME)) {
   uint64_t times[2];

   (void) sa_lookup(zp->z_sa_hdl, SA_ZPL_CRTIME(zfsvfs),
       times, sizeof (times));
   ZFS_TIME_DECODE(&xoap->xoa_createtime, times);
   XVA_SET_RTN(xvap, XAT_CREATETIME);
  }

  if (XVA_ISSET_REQ(xvap, XAT_REPARSE)) {
   xoap->xoa_reparse = ((zp->z_pflags & ZFS_REPARSE) != 0);
   XVA_SET_RTN(xvap, XAT_REPARSE);
  }
  if (XVA_ISSET_REQ(xvap, XAT_GEN)) {
   xoap->xoa_generation = ip->i_generation;
   XVA_SET_RTN(xvap, XAT_GEN);
  }

  if (XVA_ISSET_REQ(xvap, XAT_OFFLINE)) {
   xoap->xoa_offline =
       ((zp->z_pflags & ZFS_OFFLINE) != 0);
   XVA_SET_RTN(xvap, XAT_OFFLINE);
  }

  if (XVA_ISSET_REQ(xvap, XAT_SPARSE)) {
   xoap->xoa_sparse =
       ((zp->z_pflags & ZFS_SPARSE) != 0);
   XVA_SET_RTN(xvap, XAT_SPARSE);
  }

  if (XVA_ISSET_REQ(xvap, XAT_PROJINHERIT)) {
   xoap->xoa_projinherit =
       ((zp->z_pflags & ZFS_PROJINHERIT) != 0);
   XVA_SET_RTN(xvap, XAT_PROJINHERIT);
  }

  if (XVA_ISSET_REQ(xvap, XAT_PROJID)) {
   xoap->xoa_projid = zp->z_projid;
   XVA_SET_RTN(xvap, XAT_PROJID);
  }
 }

 ZFS_TIME_DECODE(&vap->va_atime, atime);
 ZFS_TIME_DECODE(&vap->va_mtime, mtime);
 ZFS_TIME_DECODE(&vap->va_ctime, ctime);

 mutex_exit(&zp->z_lock);

 sa_object_size(zp->z_sa_hdl, &vap->va_blksize, &vap->va_nblocks);

 if (zp->z_blksz == 0) {



  vap->va_blksize = zfsvfs->z_max_blksz;
 }

 ZFS_EXIT(zfsvfs);
 return (0);
}
