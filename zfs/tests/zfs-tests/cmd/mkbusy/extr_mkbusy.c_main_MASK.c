#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {int st_mode; } ;
typedef  int mode_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int S_IFBLK ; 
 int S_IFCHR ; 
 int S_IFDIR ; 
 int S_IFLNK ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int FUNC0 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char**,char*) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (char*,struct stat*) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13(int argc, char *argv[])
{
	int		ret, c;
	boolean_t	isdir = B_FALSE;
	boolean_t	fflag = B_FALSE;
	boolean_t	rflag = B_FALSE;
	struct stat	sbuf;
	char		*fpath = NULL;
	char		*prog = argv[0];

	while ((c = FUNC4(argc, argv, "fr")) != -1) {
		switch (c) {
		/* Open the file or directory read only */
		case 'r':
			rflag = B_TRUE;
			break;
		/* Run in the foreground */
		case 'f':
			fflag = B_TRUE;
			break;
		default:
			FUNC12(prog);
		}
	}

	argc -= optind;
	argv += optind;

	if (argc != 1)
		FUNC12(prog);

	if ((ret = FUNC8(argv[0], &sbuf)) != 0) {
		char	*arg, *dname, *fname;
		int	arglen;
		char	*slash;
		int	rc;

		/*
		 * The argument supplied doesn't exist. Copy the path, and
		 * remove the trailing slash if presnt.
		 */
		if ((arg = FUNC9(argv[0])) == NULL)
			FUNC2("strdup", 1);
		arglen = FUNC10(arg);
		if (arg[arglen - 1] == '/')
			arg[arglen - 1] = '\0';

		/*
		 * Get the directory and file names, using the current directory
		 * if the provided path doesn't specify a directory at all.
		 */
		if ((slash = FUNC11(arg, '/')) == NULL) {
			dname = FUNC9(".");
			fname = FUNC9(arg);
		} else {
			*slash = '\0';
			dname = FUNC9(arg);
			fname = FUNC9(slash + 1);
		}
		FUNC3(arg);
		if (dname == NULL || fname == NULL)
			FUNC2("strdup", 1);

		/* The directory portion of the path must exist */
		if ((ret = FUNC8(dname, &sbuf)) != 0 || !(sbuf.st_mode &
		    S_IFDIR))
			FUNC12(prog);

		rc = FUNC0(&fpath, "%s/%s", dname, fname);
		FUNC3(dname);
		FUNC3(fname);
		if (rc == -1 || fpath == NULL)
			FUNC2("asprintf", 1);

	} else if ((sbuf.st_mode & S_IFMT) == S_IFREG ||
	    (sbuf.st_mode & S_IFMT) == S_IFLNK ||
	    (sbuf.st_mode & S_IFMT) == S_IFCHR ||
	    (sbuf.st_mode & S_IFMT) == S_IFBLK) {
		fpath = FUNC9(argv[0]);
	} else if ((sbuf.st_mode & S_IFMT) == S_IFDIR) {
		fpath = FUNC9(argv[0]);
		isdir = B_TRUE;
	} else {
		FUNC12(prog);
	}

	if (fpath == NULL)
		FUNC2("strdup", 1);

	if (isdir == B_FALSE) {
		int	fd, flags;
		mode_t	mode = S_IRUSR | S_IWUSR;

		flags = rflag == B_FALSE ? O_CREAT | O_RDWR : O_RDONLY;

		if ((fd = FUNC5(fpath, flags, mode)) < 0)
			FUNC2("open", 1);
	} else {
		DIR	*dp;

		if ((dp = FUNC6(fpath)) == NULL)
			FUNC2("opendir", 1);
	}
	FUNC3(fpath);

	if (fflag == B_FALSE)
		FUNC1();
	(void) FUNC7();

	/* NOTREACHED */
	return (0);
}