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
struct stat {int st_nlink; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  cleaner ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* filebase ; 
 int /*<<< orphan*/  mover ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  writer ; 

int
FUNC8(int argc, char **argv)
{
	int fd;
	pthread_t tid;

	if (argc == 1) {
		(void) FUNC3("Usage: %s <filebase>\n", argv[0]);
		FUNC0(-1);
	}

	filebase = argv[1];
	fd = FUNC1(filebase, O_APPEND | O_RDWR | O_CREAT, 0644);
	if (fd < 0) {
		FUNC2("creating test file");
		FUNC0(-1);
	}

	(void) FUNC5(4);	/* 3 threads + main */
	(void) FUNC4(&tid, NULL, mover, NULL);
	(void) FUNC4(&tid, NULL, cleaner, NULL);
	(void) FUNC4(&tid, NULL, writer, (void *) &fd);

	for (;;) {
		int ret;
		struct stat st;

		ret = FUNC7(filebase, &st);
		if (ret == 0 && (st.st_nlink > 2 || st.st_nlink < 1)) {
			(void) FUNC3("st.st_nlink = %d, exiting\n", \
			    (int)st.st_nlink);
			FUNC0(0);
		}
		(void) FUNC6(1);
	}

	return (0);
}