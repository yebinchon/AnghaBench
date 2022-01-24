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
struct TYPE_3__ {int va_mode; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_mask; } ;
typedef  TYPE_1__ vattr_t ;
typedef  int umode_t ;
struct inode {int i_mode; int /*<<< orphan*/  i_gid; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(vattr_t *vap, struct inode *dir, umode_t mode, cred_t *cr)
{
	vap->va_mask = ATTR_MODE;
	vap->va_mode = mode;
	vap->va_uid = FUNC3(cr);

	if (dir && dir->i_mode & S_ISGID) {
		vap->va_gid = FUNC0(dir->i_gid);
		if (FUNC1(mode))
			vap->va_mode |= S_ISGID;
	} else {
		vap->va_gid = FUNC2(cr);
	}
}