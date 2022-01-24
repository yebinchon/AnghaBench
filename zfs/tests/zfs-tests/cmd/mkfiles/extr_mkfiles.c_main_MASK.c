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
 int MAXPATHLEN ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,unsigned int) ; 
 int FUNC4 (char*,char*,unsigned int*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

int
FUNC7(int argc, char **argv)
{
	unsigned int numfiles = 0;
	unsigned int first_file = 0;
	unsigned int i;
	char buf[MAXPATHLEN];

	if (argc < 3 || argc > 4)
		FUNC6("Invalid number of arguments", -1);

	if (FUNC4(argv[2], "%u", &numfiles) != 1)
		FUNC6("Invalid maximum file", -2);

	if (argc == 4 && FUNC4(argv[3], "%u", &first_file) != 1)
		FUNC6("Invalid first file", -3);

	for (i = first_file; i < first_file + numfiles; i++) {
		int fd;
		(void) FUNC3(buf, MAXPATHLEN, "%s%u", argv[1], i);
		if ((fd = FUNC2(buf, O_CREAT | O_EXCL, O_RDWR)) == -1) {
			(void) FUNC1(stderr, "Failed to create %s %s\n", buf,
			    FUNC5(errno));
			return (-4);
		}
		(void) FUNC0(fd);
	}
	return (0);
}