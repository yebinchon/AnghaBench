#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct inode {scalar_t__ i_uid; scalar_t__ i_gid; int /*<<< orphan*/  i_mode; } ;
typedef  scalar_t__ gid_t ;
struct TYPE_3__ {scalar_t__ uid; scalar_t__ gid; int Flags; scalar_t__ euid; scalar_t__ egid; } ;
typedef  TYPE_1__* PEXT2_VCB ;

/* Variables and functions */
 int Ext2FileCanExecute ; 
 int Ext2FileCanRead ; 
 int Ext2FileCanWrite ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int VCB_USER_EIDS ; 

int FUNC5(PEXT2_VCB Vcb, struct inode *in, int attempt)
{
    int granted = 0;

    uid_t uid = Vcb->uid;
    gid_t gid = Vcb->gid;

    if (FUNC4(Vcb->Flags, VCB_USER_EIDS)) {
        uid = Vcb->euid;
        gid = Vcb->egid;
    }

    if (!uid || uid == in->i_uid) {
        /* grant all access for inode owner or root */
        granted = Ext2FileCanRead | Ext2FileCanWrite | Ext2FileCanExecute;
    } else if (gid == in->i_gid) {
        if (FUNC0(in->i_mode))
            granted = Ext2FileCanRead | Ext2FileCanExecute;
        else if (FUNC1(in->i_mode))
            granted = Ext2FileCanRead | Ext2FileCanWrite | Ext2FileCanExecute;
    } else {
        if (FUNC2(in->i_mode))
            granted = Ext2FileCanRead | Ext2FileCanExecute;
        else if (FUNC3(in->i_mode))
            granted = Ext2FileCanRead | Ext2FileCanWrite | Ext2FileCanExecute;

    }

    return FUNC4(granted, attempt);
}