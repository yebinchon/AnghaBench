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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ EISDIR ; 
 scalar_t__ EOPNOTSUPP ; 
 int O_TMPFILE ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC6(int argc, char *argv[])
{
	int fd;
	struct stat buf;

	if (argc < 2) {
		FUNC2(stderr, "Usage: %s dir\n", argv[0]);
		return (2);
	}
	if (FUNC5(argv[1], &buf) < 0) {
		FUNC4("stat");
		return (2);
	}
	if (!FUNC0(buf.st_mode)) {
		FUNC2(stderr, "\"%s\" is not a directory\n", argv[1]);
		return (2);
	}

	fd = FUNC3(argv[1], O_TMPFILE | O_WRONLY, 0666);
	if (fd < 0) {
		if (errno == EISDIR) {
			FUNC2(stderr,
			    "The kernel doesn't support O_TMPFILE\n");
			return (1);
		} else if (errno == EOPNOTSUPP) {
			FUNC2(stderr,
			    "The filesystem doesn't support O_TMPFILE\n");
			return (2);
		}
		FUNC4("open");
	} else {
		FUNC1(fd);
	}
	return (0);
}