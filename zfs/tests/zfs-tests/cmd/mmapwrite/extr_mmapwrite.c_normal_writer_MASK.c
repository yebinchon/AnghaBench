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

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char*,int,int) ; 
 scalar_t__ FUNC6 (int,char*,int) ; 

__attribute__((used)) static void *
FUNC7(void *filename)
{
	char *file_path = filename;
	int fd = -1;
	ssize_t write_num = 0;
	int page_size = FUNC2();

	fd = FUNC5(file_path, O_RDWR | O_CREAT, 0777);
	if (fd == -1) {
		FUNC0(1, "failed to open %s", file_path);
	}

	char *buf = FUNC4(1);
	while (1) {
		write_num = FUNC6(fd, buf, 1);
		if (write_num == 0) {
			FUNC0(1, "write failed!");
			break;
		}
		FUNC3(fd, page_size, SEEK_CUR);
	}

	if (buf) {
		FUNC1(buf);
	}
}