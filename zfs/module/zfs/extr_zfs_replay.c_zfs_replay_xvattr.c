
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int va_mask; } ;
struct TYPE_11__ {int xva_mapsize; int * xva_reqattrmap; TYPE_1__ xva_vattr; } ;
typedef TYPE_2__ xvattr_t ;
struct TYPE_12__ {int xoa_hidden; int xoa_system; int xoa_archive; int xoa_readonly; int xoa_immutable; int xoa_nounlink; int xoa_appendonly; int xoa_nodump; int xoa_opaque; int xoa_av_modified; int xoa_av_quarantined; int xoa_reparse; int xoa_offline; int xoa_sparse; int xoa_projinherit; int xoa_projid; int * xoa_av_scanstamp; int xoa_createtime; } ;
typedef TYPE_3__ xoptattr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_13__ {int lr_attr_masksize; int lr_attr_bitmap; } ;
typedef TYPE_4__ lr_attr_t ;
typedef void* caddr_t ;


 int ASSERT (int) ;
 int ATTR_XVATTR ;
 int AV_SCANSTAMP_SZ ;
 int XAT0_APPENDONLY ;
 int XAT0_ARCHIVE ;
 int XAT0_AV_MODIFIED ;
 int XAT0_AV_QUARANTINED ;
 int XAT0_HIDDEN ;
 int XAT0_IMMUTABLE ;
 int XAT0_NODUMP ;
 int XAT0_NOUNLINK ;
 int XAT0_OFFLINE ;
 int XAT0_OPAQUE ;
 int XAT0_PROJINHERIT ;
 int XAT0_READONLY ;
 int XAT0_REPARSE ;
 int XAT0_SPARSE ;
 int XAT0_SYSTEM ;
 int XAT_APPENDONLY ;
 int XAT_ARCHIVE ;
 int XAT_AV_MODIFIED ;
 int XAT_AV_QUARANTINED ;
 int XAT_AV_SCANSTAMP ;
 int XAT_CREATETIME ;
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
 scalar_t__ XVA_ISSET_REQ (TYPE_2__*,int ) ;
 int ZFS_TIME_DECODE (int *,int*) ;
 int bcopy (void*,int *,int) ;
 TYPE_3__* xva_getxoptattr (TYPE_2__*) ;

__attribute__((used)) static void
zfs_replay_xvattr(lr_attr_t *lrattr, xvattr_t *xvap)
{
 xoptattr_t *xoap = ((void*)0);
 uint64_t *attrs;
 uint64_t *crtime;
 uint32_t *bitmap;
 void *scanstamp;
 int i;

 xvap->xva_vattr.va_mask |= ATTR_XVATTR;
 if ((xoap = xva_getxoptattr(xvap)) == ((void*)0)) {
  xvap->xva_vattr.va_mask &= ~ATTR_XVATTR;
  return;
 }

 ASSERT(lrattr->lr_attr_masksize == xvap->xva_mapsize);

 bitmap = &lrattr->lr_attr_bitmap;
 for (i = 0; i != lrattr->lr_attr_masksize; i++, bitmap++)
  xvap->xva_reqattrmap[i] = *bitmap;

 attrs = (uint64_t *)(lrattr + lrattr->lr_attr_masksize - 1);
 crtime = attrs + 1;
 scanstamp = (caddr_t)(crtime + 2);

 if (XVA_ISSET_REQ(xvap, XAT_HIDDEN))
  xoap->xoa_hidden = ((*attrs & XAT0_HIDDEN) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_SYSTEM))
  xoap->xoa_system = ((*attrs & XAT0_SYSTEM) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_ARCHIVE))
  xoap->xoa_archive = ((*attrs & XAT0_ARCHIVE) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_READONLY))
  xoap->xoa_readonly = ((*attrs & XAT0_READONLY) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_IMMUTABLE))
  xoap->xoa_immutable = ((*attrs & XAT0_IMMUTABLE) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_NOUNLINK))
  xoap->xoa_nounlink = ((*attrs & XAT0_NOUNLINK) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_APPENDONLY))
  xoap->xoa_appendonly = ((*attrs & XAT0_APPENDONLY) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_NODUMP))
  xoap->xoa_nodump = ((*attrs & XAT0_NODUMP) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_OPAQUE))
  xoap->xoa_opaque = ((*attrs & XAT0_OPAQUE) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_AV_MODIFIED))
  xoap->xoa_av_modified = ((*attrs & XAT0_AV_MODIFIED) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_AV_QUARANTINED))
  xoap->xoa_av_quarantined =
      ((*attrs & XAT0_AV_QUARANTINED) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_CREATETIME))
  ZFS_TIME_DECODE(&xoap->xoa_createtime, crtime);
 if (XVA_ISSET_REQ(xvap, XAT_AV_SCANSTAMP)) {
  ASSERT(!XVA_ISSET_REQ(xvap, XAT_PROJID));

  bcopy(scanstamp, xoap->xoa_av_scanstamp, AV_SCANSTAMP_SZ);
 } else if (XVA_ISSET_REQ(xvap, XAT_PROJID)) {




  bcopy(scanstamp, &xoap->xoa_projid, sizeof (uint64_t));
 }
 if (XVA_ISSET_REQ(xvap, XAT_REPARSE))
  xoap->xoa_reparse = ((*attrs & XAT0_REPARSE) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_OFFLINE))
  xoap->xoa_offline = ((*attrs & XAT0_OFFLINE) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_SPARSE))
  xoap->xoa_sparse = ((*attrs & XAT0_SPARSE) != 0);
 if (XVA_ISSET_REQ(xvap, XAT_PROJINHERIT))
  xoap->xoa_projinherit = ((*attrs & XAT0_PROJINHERIT) != 0);
}
