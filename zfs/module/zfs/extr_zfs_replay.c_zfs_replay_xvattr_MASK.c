#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  va_mask; } ;
struct TYPE_11__ {int xva_mapsize; int /*<<< orphan*/ * xva_reqattrmap; TYPE_1__ xva_vattr; } ;
typedef  TYPE_2__ xvattr_t ;
struct TYPE_12__ {int xoa_hidden; int xoa_system; int xoa_archive; int xoa_readonly; int xoa_immutable; int xoa_nounlink; int xoa_appendonly; int xoa_nodump; int xoa_opaque; int xoa_av_modified; int xoa_av_quarantined; int xoa_reparse; int xoa_offline; int xoa_sparse; int xoa_projinherit; int /*<<< orphan*/  xoa_projid; int /*<<< orphan*/ * xoa_av_scanstamp; int /*<<< orphan*/  xoa_createtime; } ;
typedef  TYPE_3__ xoptattr_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {int lr_attr_masksize; int /*<<< orphan*/  lr_attr_bitmap; } ;
typedef  TYPE_4__ lr_attr_t ;
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ATTR_XVATTR ; 
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
 int /*<<< orphan*/  XAT_APPENDONLY ; 
 int /*<<< orphan*/  XAT_ARCHIVE ; 
 int /*<<< orphan*/  XAT_AV_MODIFIED ; 
 int /*<<< orphan*/  XAT_AV_QUARANTINED ; 
 int /*<<< orphan*/  XAT_AV_SCANSTAMP ; 
 int /*<<< orphan*/  XAT_CREATETIME ; 
 int /*<<< orphan*/  XAT_HIDDEN ; 
 int /*<<< orphan*/  XAT_IMMUTABLE ; 
 int /*<<< orphan*/  XAT_NODUMP ; 
 int /*<<< orphan*/  XAT_NOUNLINK ; 
 int /*<<< orphan*/  XAT_OFFLINE ; 
 int /*<<< orphan*/  XAT_OPAQUE ; 
 int /*<<< orphan*/  XAT_PROJID ; 
 int /*<<< orphan*/  XAT_PROJINHERIT ; 
 int /*<<< orphan*/  XAT_READONLY ; 
 int /*<<< orphan*/  XAT_REPARSE ; 
 int /*<<< orphan*/  XAT_SPARSE ; 
 int /*<<< orphan*/  XAT_SYSTEM ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(lr_attr_t *lrattr, xvattr_t *xvap)
{
	xoptattr_t *xoap = NULL;
	uint64_t *attrs;
	uint64_t *crtime;
	uint32_t *bitmap;
	void *scanstamp;
	int i;

	xvap->xva_vattr.va_mask |= ATTR_XVATTR;
	if ((xoap = FUNC4(xvap)) == NULL) {
		xvap->xva_vattr.va_mask &= ~ATTR_XVATTR; /* shouldn't happen */
		return;
	}

	FUNC0(lrattr->lr_attr_masksize == xvap->xva_mapsize);

	bitmap = &lrattr->lr_attr_bitmap;
	for (i = 0; i != lrattr->lr_attr_masksize; i++, bitmap++)
		xvap->xva_reqattrmap[i] = *bitmap;

	attrs = (uint64_t *)(lrattr + lrattr->lr_attr_masksize - 1);
	crtime = attrs + 1;
	scanstamp = (caddr_t)(crtime + 2);

	if (FUNC1(xvap, XAT_HIDDEN))
		xoap->xoa_hidden = ((*attrs & XAT0_HIDDEN) != 0);
	if (FUNC1(xvap, XAT_SYSTEM))
		xoap->xoa_system = ((*attrs & XAT0_SYSTEM) != 0);
	if (FUNC1(xvap, XAT_ARCHIVE))
		xoap->xoa_archive = ((*attrs & XAT0_ARCHIVE) != 0);
	if (FUNC1(xvap, XAT_READONLY))
		xoap->xoa_readonly = ((*attrs & XAT0_READONLY) != 0);
	if (FUNC1(xvap, XAT_IMMUTABLE))
		xoap->xoa_immutable = ((*attrs & XAT0_IMMUTABLE) != 0);
	if (FUNC1(xvap, XAT_NOUNLINK))
		xoap->xoa_nounlink = ((*attrs & XAT0_NOUNLINK) != 0);
	if (FUNC1(xvap, XAT_APPENDONLY))
		xoap->xoa_appendonly = ((*attrs & XAT0_APPENDONLY) != 0);
	if (FUNC1(xvap, XAT_NODUMP))
		xoap->xoa_nodump = ((*attrs & XAT0_NODUMP) != 0);
	if (FUNC1(xvap, XAT_OPAQUE))
		xoap->xoa_opaque = ((*attrs & XAT0_OPAQUE) != 0);
	if (FUNC1(xvap, XAT_AV_MODIFIED))
		xoap->xoa_av_modified = ((*attrs & XAT0_AV_MODIFIED) != 0);
	if (FUNC1(xvap, XAT_AV_QUARANTINED))
		xoap->xoa_av_quarantined =
		    ((*attrs & XAT0_AV_QUARANTINED) != 0);
	if (FUNC1(xvap, XAT_CREATETIME))
		FUNC2(&xoap->xoa_createtime, crtime);
	if (FUNC1(xvap, XAT_AV_SCANSTAMP)) {
		FUNC0(!FUNC1(xvap, XAT_PROJID));

		FUNC3(scanstamp, xoap->xoa_av_scanstamp, AV_SCANSTAMP_SZ);
	} else if (FUNC1(xvap, XAT_PROJID)) {
		/*
		 * XAT_PROJID and XAT_AV_SCANSTAMP will never be valid
		 * at the same time, so we can share the same space.
		 */
		FUNC3(scanstamp, &xoap->xoa_projid, sizeof (uint64_t));
	}
	if (FUNC1(xvap, XAT_REPARSE))
		xoap->xoa_reparse = ((*attrs & XAT0_REPARSE) != 0);
	if (FUNC1(xvap, XAT_OFFLINE))
		xoap->xoa_offline = ((*attrs & XAT0_OFFLINE) != 0);
	if (FUNC1(xvap, XAT_SPARSE))
		xoap->xoa_sparse = ((*attrs & XAT0_SPARSE) != 0);
	if (FUNC1(xvap, XAT_PROJINHERIT))
		xoap->xoa_projinherit = ((*attrs & XAT0_PROJINHERIT) != 0);
}