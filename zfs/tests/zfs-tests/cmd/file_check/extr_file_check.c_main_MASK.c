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
typedef  long int64_t ;

/* Variables and functions */
 int BIGBUFFERSIZE ; 
 unsigned char DATA ; 
 int /*<<< orphan*/  O_RDONLY ; 
 unsigned char FUNC0 (char*) ; 
 unsigned char* bigbuffer ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 long FUNC4 (int,unsigned char**,int) ; 

int
FUNC5(int argc, char **argv)
{
	int		bigfd;
	long		i, n;
	unsigned char	fillchar = DATA;
	int		bigbuffersize = BIGBUFFERSIZE;
	int64_t		read_count = 0;

	/*
	 * Validate arguments
	 */
	if (argc < 2) {
		(void) FUNC3("Usage: %s filename [pattern]\n",
		    argv[0]);
		FUNC1(1);
	}

	if (argv[2]) {
		fillchar = FUNC0(argv[2]);
	}

	/*
	 * Read the file contents and check every character
	 * against the supplied pattern. Abort if the
	 * pattern check fails.
	 */
	if ((bigfd = FUNC2(argv[1], O_RDONLY)) == -1) {
		(void) FUNC3("open %s failed %d\n", argv[1], errno);
		FUNC1(1);
	}

	do {
		if ((n = FUNC4(bigfd, &bigbuffer, bigbuffersize)) == -1) {
			(void) FUNC3("read failed (%ld), %d\n", n, errno);
			FUNC1(errno);
		}

		for (i = 0; i < n; i++) {
			if (bigbuffer[i] != fillchar) {
				(void) FUNC3("error %s: 0x%x != 0x%x)\n",
				    argv[1], bigbuffer[i], fillchar);
				FUNC1(1);
			}
		}

		read_count += n;
	} while (n == bigbuffersize);

	return (0);
}