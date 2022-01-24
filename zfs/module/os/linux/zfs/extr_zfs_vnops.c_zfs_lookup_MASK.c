#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int z_pflags; int /*<<< orphan*/ * z_sa_hdl; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_14__ {scalar_t__ z_utf8; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  pathname_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_EXECUTE ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int FIGNORECASE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int LOOKUP_XATTR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U8_VALIDATE_ENTIRE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int ZFS_XATTR ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC11 (TYPE_1__*,char*,struct inode**,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__*,struct inode**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC16(struct inode *dip, char *nm, struct inode **ipp, int flags,
    cred_t *cr, int *direntflags, pathname_t *realpnp)
{
	znode_t *zdp = FUNC0(dip);
	zfsvfs_t *zfsvfs = FUNC1(dip);
	int error = 0;

	/*
	 * Fast path lookup, however we must skip DNLC lookup
	 * for case folding or normalizing lookups because the
	 * DNLC code only stores the passed in name.  This means
	 * creating 'a' and removing 'A' on a case insensitive
	 * file system would work, but DNLC still thinks 'a'
	 * exists and won't let you create it again on the next
	 * pass through fast path.
	 */
	if (!(flags & (LOOKUP_XATTR | FIGNORECASE))) {

		if (!FUNC3(dip->i_mode)) {
			return (FUNC2(ENOTDIR));
		} else if (zdp->z_sa_hdl == NULL) {
			return (FUNC2(EIO));
		}

		if (nm[0] == 0 || (nm[0] == '.' && nm[1] == '\0')) {
			error = FUNC12(zdp, cr);
			if (!error) {
				*ipp = dip;
				FUNC7(*ipp);
				return (0);
			}
			return (error);
		}
	}

	FUNC4(zfsvfs);
	FUNC6(zdp);

	*ipp = NULL;

	if (flags & LOOKUP_XATTR) {
		/*
		 * We don't allow recursive attributes..
		 * Maybe someday we will.
		 */
		if (zdp->z_pflags & ZFS_XATTR) {
			FUNC5(zfsvfs);
			return (FUNC2(EINVAL));
		}

		if ((error = FUNC13(zdp, ipp, cr, flags))) {
			FUNC5(zfsvfs);
			return (error);
		}

		/*
		 * Do we have permission to get into attribute directory?
		 */

		if ((error = FUNC15(FUNC0(*ipp), ACE_EXECUTE, 0,
		    B_FALSE, cr))) {
			FUNC8(*ipp);
			*ipp = NULL;
		}

		FUNC5(zfsvfs);
		return (error);
	}

	if (!FUNC3(dip->i_mode)) {
		FUNC5(zfsvfs);
		return (FUNC2(ENOTDIR));
	}

	/*
	 * Check accessibility of directory.
	 */

	if ((error = FUNC15(zdp, ACE_EXECUTE, 0, B_FALSE, cr))) {
		FUNC5(zfsvfs);
		return (error);
	}

	if (zfsvfs->z_utf8 && FUNC10(nm, FUNC9(nm),
	    NULL, U8_VALIDATE_ENTIRE, &error) < 0) {
		FUNC5(zfsvfs);
		return (FUNC2(EILSEQ));
	}

	error = FUNC11(zdp, nm, ipp, flags, direntflags, realpnp);
	if ((error == 0) && (*ipp))
		FUNC14(FUNC0(*ipp));

	FUNC5(zfsvfs);
	return (error);
}