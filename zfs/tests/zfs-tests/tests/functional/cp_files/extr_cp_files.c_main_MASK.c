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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int O_CREAT ; 
 int /*<<< orphan*/  O_DIRECTORY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(int argc, char *argv[])
{
	int tfd;
	DIR *sdir;
	struct dirent *dirent;

	if (argc != 3) {
		FUNC3(stderr, "Usage: %s SRC DST\n", argv[0]);
		FUNC2(1);
	}

	sdir = FUNC6(argv[1]);
	if (sdir == NULL) {
		FUNC3(stderr, "Failed to open %s: %s\n",
		    argv[1], FUNC8(errno));
		FUNC2(2);
	}

	tfd = FUNC4(argv[2], O_DIRECTORY);
	if (tfd < 0) {
		FUNC3(stderr, "Failed to open %s: %s\n",
		    argv[2], FUNC8(errno));
		FUNC1(sdir);
		FUNC2(3);
	}

	while ((dirent = FUNC7(sdir)) != NULL) {
		if (dirent->d_name[0] == '.' &&
		    (dirent->d_name[1] == '.' || dirent->d_name[1] == '\0'))
			continue;

		int fd = FUNC5(tfd, dirent->d_name, O_CREAT|O_WRONLY, 0666);
		if (fd < 0) {
			FUNC3(stderr, "Failed to create %s/%s: %s\n",
			    argv[2], dirent->d_name, FUNC8(errno));
			FUNC1(sdir);
			FUNC0(tfd);
			FUNC2(4);
		}
		FUNC0(fd);
	}

	FUNC1(sdir);
	FUNC0(tfd);

	return (0);
}