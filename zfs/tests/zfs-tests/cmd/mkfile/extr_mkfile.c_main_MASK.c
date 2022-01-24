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
struct stat64 {size_t st_blksize; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  offset_t ;
typedef  size_t off_t ;

/* Variables and functions */
 size_t BLOCKSIZE ; 
 int FILE_MODE ; 
 size_t GIGABYTE ; 
 size_t KILOBYTE ; 
 size_t MEGABYTE ; 
 scalar_t__ FUNC0 (size_t,size_t) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (int,size_t) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,struct stat64*) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 scalar_t__ FUNC11 (int,size_t,int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC13 (int) ; 
 size_t FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (int,char*,size_t) ; 

int
FUNC17(int argc, char **argv)
{
	char	*opts;
	off_t	size;
	size_t	len;
	size_t	mult = 1;
	char	*buf = NULL;
	size_t	bufsz = 0;
	int	errors = 0;
	int	i;
	int	verbose = 0;	/* option variable */
	int	nobytes = 0;	/* option variable */
	int	saverr;

	if (argc == 1)
		FUNC15();

	while (argv[1] && argv[1][0] == '-') {
		opts = &argv[1][0];
		while (*(++opts)) {
			switch (*opts) {
			case 'v':
				verbose++;
				break;
			case 'n':
				nobytes++;
				break;
			default:
				FUNC15();
			}
		}
		argc--;
		argv++;
	}
	if (argc < 3)
		FUNC15();

	len = FUNC14(argv[1]);
	if (len && FUNC9(argv[1][len-1])) {
		switch (argv[1][len-1]) {
		case 'k':
		case 'K':
			mult = KILOBYTE;
			break;
		case 'b':
		case 'B':
			mult = BLOCKSIZE;
			break;
		case 'm':
		case 'M':
			mult = MEGABYTE;
			break;
		case 'g':
		case 'G':
			mult = GIGABYTE;
			break;
		default:
			(void) FUNC5(stderr,
			    FUNC8("unknown size %s\n"), argv[1]);
			FUNC15();
		}

		for (i = 0; i <= (len-2); i++) {
			if (!FUNC10(argv[1][i])) {
				(void) FUNC5(stderr,
				    FUNC8("unknown size %s\n"), argv[1]);
				FUNC15();
			}
		}
		argv[1][len-1] = '\0';
	}
	size = ((off_t)FUNC1(argv[1]) * (off_t)mult);

	argv++;
	argc--;

	while (argc > 1) {
		int fd;

		if (verbose)
			(void) FUNC5(stdout, FUNC8("%s %lld bytes\n"),
			    argv[1], (offset_t)size);
		fd = FUNC12(argv[1], O_CREAT|O_TRUNC|O_RDWR, FILE_MODE);
		if (fd < 0) {
			saverr = errno;
			(void) FUNC5(stderr,
			    FUNC8("Could not open %s: %s\n"),
			    argv[1], FUNC13(saverr));
			errors++;
			argv++;
			argc--;
			continue;
		}
		if (FUNC11(fd, (off_t)size-1, SEEK_SET) < 0) {
			saverr = errno;
			(void) FUNC5(stderr, FUNC8(
			    "Could not seek to offset %ld in %s: %s\n"),
			    (unsigned long)size-1, argv[1], FUNC13(saverr));
			(void) FUNC4(fd);
			errors++;
			argv++;
			argc--;
			continue;
		} else if (FUNC16(fd, "", 1) != 1) {
			saverr = errno;
			(void) FUNC5(stderr, FUNC8(
			    "Could not set length of %s: %s\n"),
			    argv[1], FUNC13(saverr));
			(void) FUNC4(fd);
			errors++;
			argv++;
			argc--;
			continue;
		}

		if (!nobytes) {
			off_t written = 0;
			struct stat64 st;

			if (FUNC11(fd, (off_t)0, SEEK_SET) < 0) {
				saverr = errno;
				(void) FUNC5(stderr, FUNC8(
				    "Could not seek to beginning of %s: %s\n"),
				    argv[1], FUNC13(saverr));
				(void) FUNC4(fd);
				errors++;
				argv++;
				argc--;
				continue;
			}
			if (FUNC7(fd, &st) < 0) {
				saverr = errno;
				(void) FUNC5(stderr, FUNC8(
				    "Could not fstat64 %s: %s\n"),
				    argv[1], FUNC13(saverr));
				(void) FUNC4(fd);
				errors++;
				argv++;
				argc--;
				continue;
			}
			if (bufsz != st.st_blksize) {
				if (buf)
					FUNC6(buf);
				bufsz = (size_t)st.st_blksize;
				buf = FUNC2(1, bufsz);
				if (buf == NULL) {
					(void) FUNC5(stderr, FUNC8(
					    "Could not allocate buffer of"
					    " size %d\n"), (int)bufsz);
					(void) FUNC4(fd);
					bufsz = 0;
					errors++;
					argv++;
					argc--;
					continue;
				}
			}
			while (written < size) {
				ssize_t result;
				size_t bytes = (size_t)FUNC0(bufsz, size-written);

				if ((result = FUNC16(fd, buf, bytes)) !=
				    (ssize_t)bytes) {
					saverr = errno;
					if (result < 0)
						result = 0;
					written += result;
					(void) FUNC5(stderr, FUNC8(
			    "%s: initialized %lu of %lu bytes: %s\n"),
					    argv[1], (unsigned long)written,
					    (unsigned long)size,
					    FUNC13(saverr));
					errors++;
					break;
				}
				written += bytes;
			}

			/*
			 * A write(2) call in the above loop failed so
			 * close out this file and go on (error was
			 * already incremented when the write(2) failed).
			 */
			if (written < size) {
				(void) FUNC4(fd);
				argv++;
				argc--;
				continue;
			}
		}
		if (FUNC4(fd) < 0) {
			saverr = errno;
			(void) FUNC5(stderr, FUNC8(
			    "Error encountered when closing %s: %s\n"),
			    argv[1], FUNC13(saverr));
			errors++;
			argv++;
			argc--;
			continue;
		}

		/*
		 * Only set the modes (including the sticky bit) if we
		 * had no problems.  It is not an error for the chmod(2)
		 * to fail, but do issue a warning.
		 */
		if (FUNC3(argv[1], FILE_MODE) < 0)
			(void) FUNC5(stderr, FUNC8(
			    "warning: couldn't set mode to %#o\n"), FILE_MODE);

		argv++;
		argc--;
	}
	return (errors);
}