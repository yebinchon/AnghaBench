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

/* Variables and functions */
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int bsize ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int count ; 
 char* execname ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 char* ifile ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 char* ofile ; 
 int FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (void**,int,int) ; 
 int FUNC9 (int,void*,int) ; 
 int seek ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int) ; 
 int stride ; 
 int FUNC11 (int,void*,int) ; 

int
FUNC12(int argc, char *argv[])
{
	int i;
	int ifd;
	int ofd;
	void *buf;
	int c;

	FUNC6(argc, argv);

	ifd = FUNC5(ifile, O_RDONLY);
	if (ifd == -1) {
		(void) FUNC2(stderr, "%s: %s: ", execname, ifile);
		FUNC7("open");
		FUNC1(2);
	}

	ofd = FUNC5(ofile, O_WRONLY | O_CREAT, 0666);
	if (ofd == -1) {
		(void) FUNC2(stderr, "%s: %s: ", execname, ofile);
		FUNC7("open");
		FUNC1(2);
	}

	/*
	 * We use valloc because some character block devices expect a
	 * page-aligned buffer.
	 */
	int err = FUNC8(&buf, 4096, bsize);
	if (err != 0) {
		(void) FUNC2(stderr,
		    "%s: %s\n", execname, FUNC10(err));
		FUNC1(2);
	}

	if (seek > 0) {
		if (FUNC4(ofd, seek * bsize, SEEK_CUR) == -1) {
			FUNC7("output lseek");
			FUNC1(2);
		}
	}

	for (i = 0; i < count; i++) {
		c = FUNC9(ifd, buf, bsize);
		if (c != bsize) {

			FUNC7("read");
			FUNC1(2);
		}
		if (c != bsize) {
			if (c < 0) {
				FUNC7("read");
			} else {
				(void) FUNC2(stderr,
				    "%s: unexpected short read, read %d "
				    "bytes, expected %d\n", execname,
				    c, bsize);
			}
			FUNC1(2);
		}

		c = FUNC11(ofd, buf, bsize);
		if (c != bsize) {
			if (c < 0) {
				FUNC7("write");
			} else {
				(void) FUNC2(stderr,
				    "%s: unexpected short write, wrote %d "
				    "bytes, expected %d\n", execname,
				    c, bsize);
			}
			FUNC1(2);
		}

		if (stride > 1) {
			if (FUNC4(ifd, (stride - 1) * bsize, SEEK_CUR) == -1) {
				FUNC7("input lseek");
				FUNC1(2);
			}
			if (FUNC4(ofd, (stride - 1) * bsize, SEEK_CUR) == -1) {
				FUNC7("output lseek");
				FUNC1(2);
			}
		}
	}
	FUNC3(buf);

	(void) FUNC0(ofd);
	(void) FUNC0(ifd);

	return (0);
}