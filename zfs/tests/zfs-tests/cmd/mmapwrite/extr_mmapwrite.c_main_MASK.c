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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int NORMAL_WRITE_TH_NUM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  map_writer ; 
 int /*<<< orphan*/  normal_writer ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(int argc, char **argv)
{
	pthread_t map_write_tid;
	pthread_t normal_write_tid[NORMAL_WRITE_TH_NUM];
	int i = 0;

	if (argc != 3) {
		(void) FUNC2("usage: %s <normal write file name>"
		    "<map write file name>\n", argv[0]);
		FUNC1(1);
	}

	for (i = 0; i < NORMAL_WRITE_TH_NUM; i++) {
		if (FUNC3(&normal_write_tid[i], NULL, normal_writer,
		    argv[1])) {
			FUNC0(1, "pthread_create normal_writer failed.");
		}
	}

	if (FUNC3(&map_write_tid, NULL, map_writer, argv[2])) {
		FUNC0(1, "pthread_create map_writer failed.");
	}

	/* NOTREACHED */
	FUNC4(map_write_tid, NULL);
	return (0);
}