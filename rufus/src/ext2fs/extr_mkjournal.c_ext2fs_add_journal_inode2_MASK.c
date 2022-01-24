#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_ino; } ;
typedef  int /*<<< orphan*/  jfile ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  blk_t ;
typedef  int /*<<< orphan*/  blk64_t ;
struct TYPE_8__ {int /*<<< orphan*/  s_journal_uuid; scalar_t__ s_journal_dev; int /*<<< orphan*/  s_journal_inum; int /*<<< orphan*/  s_jnl_blocks; } ;
struct TYPE_7__ {int flags; TYPE_4__* super; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int EXT2_FLAG_EXCLUSIVE ; 
 int EXT2_IMMUTABLE_FL ; 
 int /*<<< orphan*/  EXT2_IOC_GETFLAGS ; 
 int /*<<< orphan*/  EXT2_IOC_SETFLAGS ; 
 int /*<<< orphan*/  EXT2_JOURNAL_INO ; 
 int EXT2_MF_BUSY ; 
 int EXT2_MF_MOUNTED ; 
 int EXT2_MKJOURNAL_LAZYINIT ; 
 int EXT2_MKJOURNAL_NO_MNT_CHECK ; 
 int EXT2_NODUMP_FL ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int UF_IMMUTABLE ; 
 int UF_NODUMP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

errcode_t FUNC13(ext2_filsys fs, blk_t num_blocks,
				    blk64_t goal, int flags)
{
	errcode_t		retval;
	ext2_ino_t		journal_ino;
	struct stat		st;
	char			jfile[1024];
	int			mount_flags;
	int			fd = -1;

	if (flags & EXT2_MKJOURNAL_NO_MNT_CHECK)
		mount_flags = 0;
	else if ((retval = FUNC2(fs->device_name,
						    &mount_flags,
						    jfile, sizeof(jfile)-10)))
		return retval;

	if (mount_flags & EXT2_MF_MOUNTED) {
#if HAVE_EXT2_IOCTLS
		int f = 0;
#endif
		FUNC10(jfile, "/.journal");

		/*
		 * If .../.journal already exists, make sure any
		 * immutable or append-only flags are cleared.
		 */
#if defined(HAVE_CHFLAGS) && defined(UF_NODUMP)
		(void) chflags (jfile, 0);
#else
#if HAVE_EXT2_IOCTLS
		fd = open(jfile, O_RDONLY);
		if (fd >= 0) {
			retval = ioctl(fd, EXT2_IOC_SETFLAGS, &f);
			close(fd);
			if (retval)
				return retval;
		}
#endif
#endif

		/* Create the journal file */
		if ((fd = FUNC9(jfile, O_CREAT|O_WRONLY, 0600)) < 0)
			return errno;

		/* Note that we can't do lazy journal initialization for mounted
		 * filesystems, since the zero writing is also allocating the
		 * journal blocks.  We could use fallocate, but not all kernels
		 * support that, and creating a journal on a mounted ext2
		 * filesystems is extremely rare these days...  Ignore it. */
		flags &= ~EXT2_MKJOURNAL_LAZYINIT;

		if ((retval = FUNC11(fs, jfile, num_blocks, flags)))
			goto errout;

		/* Get inode number of the journal file */
		if (FUNC6(fd, &st) < 0) {
			retval = errno;
			goto errout;
		}

#if defined(HAVE_CHFLAGS) && defined(UF_NODUMP)
		retval = fchflags (fd, UF_NODUMP|UF_IMMUTABLE);
#else
#if HAVE_EXT2_IOCTLS
		if (ioctl(fd, EXT2_IOC_GETFLAGS, &f) < 0) {
			retval = errno;
			goto errout;
		}
		f |= EXT2_NODUMP_FL | EXT2_IMMUTABLE_FL;
		retval = ioctl(fd, EXT2_IOC_SETFLAGS, &f);
#endif
#endif
		// coverity[dead_error_condition]
		if (retval) {
			retval = errno;
			goto errout;
		}

		if (FUNC1(fd) < 0) {
			retval = errno;
			fd = -1;
			goto errout;
		}
		journal_ino = st.st_ino;
		FUNC8(fs->super->s_jnl_blocks, 0,
		       sizeof(fs->super->s_jnl_blocks));
	} else {
		if ((mount_flags & EXT2_MF_BUSY) &&
		    !(fs->flags & EXT2_FLAG_EXCLUSIVE)) {
			retval = EBUSY;
			goto errout;
		}
		journal_ino = EXT2_JOURNAL_INO;
		if ((retval = FUNC12(fs, journal_ino,
						  num_blocks, goal, flags)))
			return retval;
	}

	fs->super->s_journal_inum = journal_ino;
	fs->super->s_journal_dev = 0;
	FUNC8(fs->super->s_journal_uuid, 0,
	       sizeof(fs->super->s_journal_uuid));
	FUNC4(fs->super);

	FUNC3(fs);
	return 0;
errout:
	if (fd >= 0)
		FUNC1(fd);
	return retval;
}