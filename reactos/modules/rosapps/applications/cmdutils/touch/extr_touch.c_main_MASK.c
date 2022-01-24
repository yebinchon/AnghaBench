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
typedef  void* time_t ;
struct utimbuf {void* modtime; void* actime; } ;
struct stat {void* st_mtime; void* st_atime; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFFILEMODE ; 
 int EOF ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 char* __progname ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC4 (char*,struct stat*,int) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 (void**) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,struct utimbuf*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

int
FUNC14(int argc, char *argv[])
{
	struct stat sb;
	time_t tv[2];
	int aflag, cflag, fflag, mflag, ch, fd, len, rval, timeset;
	char *p;
	struct utimbuf utb;

	__progname = argv[0];

	aflag = cflag = fflag = mflag = timeset = 0;
	FUNC10(&tv[0]);

	while ((ch = FUNC3(argc, argv, "acfmr:t:")) != EOF)
		switch(ch) {
		case 'a':
			aflag = 1;
			break;
		case 'c':
			cflag = 1;
			break;
		case 'f':
			fflag = 1;
			break;
		case 'm':
			mflag = 1;
			break;
		case 'r':
			timeset = 1;
			FUNC8(optarg, tv);
			break;
		case 't':
			timeset = 1;
			FUNC6(optarg, tv);
			break;
		case '?':
		default:
			FUNC11();
		}
	argc -= optind;
	argv += optind;

	/* Default is both -a and -m. */
	if (aflag == 0 && mflag == 0)
		aflag = mflag = 1;

	/*
	 * If no -r or -t flag, at least two operands, the first of which
	 * is an 8 or 10 digit number, use the obsolete time specification.
	 */
	if (!timeset && argc > 1) {
		(void)FUNC9(argv[0], &p, 10);
		len = p - argv[0];
		if (*p == '\0' && (len == 8 || len == 10)) {
			timeset = 1;
			FUNC7(argv[0], len == 10, tv);
		}
	}

	/* Otherwise use the current time of day. */
	if (!timeset)
		tv[1] = tv[0];

	if (*argv == NULL)
		FUNC11();

	for (rval = 0; *argv; ++argv) {
		/* See if the file exists. */
		if (FUNC5(*argv, &sb)) {
			if (!cflag) {
				/* Create the file. */
				fd = FUNC1(*argv,
				    O_WRONLY | O_CREAT, DEFFILEMODE);
				if (fd == -1 || FUNC2(fd, &sb) || FUNC0(fd)) {
					rval = 1;
					FUNC13("%s", *argv);
					continue;
				}

				/* If using the current time, we're done. */
				if (!timeset)
					continue;
			} else
				continue;
		}

		if (!aflag)
			tv[0] = sb.st_atime;
		if (!mflag)
			tv[1] = sb.st_mtime;

		/* Try utime. */
		utb.actime = tv[0];
		utb.modtime = tv[1];
		if (!FUNC12(*argv, &utb))
			continue;

		/* If the user specified a time, nothing else we can do. */
		if (timeset) {
			rval = 1;
			FUNC13("%s", *argv);
		}

		/*
		 * System V and POSIX 1003.1 require that a NULL argument
		 * set the access/modification times to the current time.
		 * The permission checks are different, too, in that the
		 * ability to write the file is sufficient.  Take a shot.
		 */
		 if (!FUNC12(*argv, NULL))
			continue;

		/* Try reading/writing. */
		if (FUNC4(*argv, &sb, fflag))
			rval = 1;
	}
	return rval;
}