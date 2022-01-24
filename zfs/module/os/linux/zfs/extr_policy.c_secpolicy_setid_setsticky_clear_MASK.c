#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int va_mode; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; } ;
typedef  TYPE_1__ vattr_t ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int S_ISGID ; 
 int S_ISUID ; 
 int S_ISVTX ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct inode *ip, vattr_t *vap,
    const vattr_t *ovap, cred_t *cr)
{
	int error;

	if ((vap->va_mode & S_ISUID) != 0 &&
	    (error = FUNC1(cr,
	    ovap->va_uid)) != 0) {
		return (error);
	}

	/*
	 * Check privilege if attempting to set the
	 * sticky bit on a non-directory.
	 */
	if (!FUNC0(ip->i_mode) && (vap->va_mode & S_ISVTX) != 0 &&
	    FUNC3(cr) != 0) {
		vap->va_mode &= ~S_ISVTX;
	}

	/*
	 * Check for privilege if attempting to set the
	 * group-id bit.
	 */
	if ((vap->va_mode & S_ISGID) != 0 &&
	    FUNC2(cr, ovap->va_gid) != 0) {
		vap->va_mode &= ~S_ISGID;
	}

	return (0);
}