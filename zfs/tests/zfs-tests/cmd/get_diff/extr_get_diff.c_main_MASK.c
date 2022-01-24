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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int DEV_BSIZE ; 
 scalar_t__ EIO ; 
 int O_LARGEFILE ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,long long,long long) ; 
 scalar_t__ FUNC4 (char*,char*,scalar_t__) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

int
FUNC9(int argc, char *argv[])
{
	off_t		diff_off = 0, diff_len = 0, off = 0;
	int		fd1, fd2;
	char		*fname1, *fname2;
	char		buf1[DEV_BSIZE], buf2[DEV_BSIZE];
	ssize_t		bytes;

	if (argc != 3)
		FUNC8("Incorrect number of arguments.", 1);

	if ((fname1 = argv[1]) == NULL)
		FUNC8("Filename missing.", 1);
	if ((fd1 = FUNC5(fname1, O_LARGEFILE | O_RDONLY)) < 0) {
		FUNC6("open1 failed");
		FUNC2(1);
	}

	if ((fname2 = argv[2]) == NULL)
		FUNC8("Redacted filename missing.", 1);
	if ((fd2 = FUNC5(fname2, O_LARGEFILE | O_RDONLY)) < 0) {
		FUNC6("open2 failed");
		FUNC2(1);
	}

	while ((bytes = FUNC7(fd1, buf1, DEV_BSIZE, off)) > 0) {
		if (FUNC7(fd2, buf2, DEV_BSIZE, off) < 0) {
			if (errno == EIO) {
				/*
				 * A read in a redacted section of a file will
				 * fail with EIO. If we get EIO, continue on
				 * but ensure that a comparison of buf1 and
				 * buf2 will fail, indicating a redacted block.
				 */
				buf2[0] = ~buf1[0];
			} else {
				FUNC6("pread failed");
				FUNC2(1);
			}
		}
		if (FUNC4(buf1, buf2, bytes) == 0) {
			if (diff_len != 0) {
				(void) FUNC3(stdout, "%lld,%lld\n",
				    (long long)diff_off, (long long)diff_len);
				FUNC0(off == diff_off + diff_len);
				diff_len = 0;
			}
			diff_off = 0;
		} else {
			if (diff_len == 0)
				diff_off = off;
			FUNC0(off == diff_off + diff_len);
			diff_len += bytes;
		}
		off += bytes;
	}

	if (diff_len != 0 && diff_len != 0) {
		(void) FUNC3(stdout, "%lld,%lld\n", (long long)diff_off,
		    (long long)diff_len);
	}

	(void) FUNC1(fd1);
	(void) FUNC1(fd2);

	return (0);
}