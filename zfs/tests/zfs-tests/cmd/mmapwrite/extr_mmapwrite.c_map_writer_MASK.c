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
 int ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int errno ; 
 int FUNC3 (int,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int) ; 
 int FUNC8 (char*,int,int) ; 

__attribute__((used)) static void *
FUNC9(void *filename)
{
	int fd = -1;
	int ret = 0;
	char *buf = NULL;
	int page_size = FUNC4();
	int op_errno = 0;
	char *file_path = filename;

	while (1) {
		ret = FUNC0(file_path, F_OK);
		if (ret) {
			op_errno = errno;
			if (op_errno == ENOENT) {
				fd = FUNC8(file_path, O_RDWR | O_CREAT, 0777);
				if (fd == -1) {
					FUNC2(1, "open file failed");
				}

				ret = FUNC3(fd, page_size);
				if (ret == -1) {
					FUNC2(1, "truncate file failed");
				}
			} else {
				FUNC2(1, "access file failed!");
			}
		} else {
			fd = FUNC8(file_path, O_RDWR, 0777);
			if (fd == -1) {
				FUNC2(1, "open file failed");
			}
		}

		if ((buf = FUNC6(NULL, page_size, PROT_READ | PROT_WRITE,
		    MAP_SHARED, fd, 0)) == MAP_FAILED) {
			FUNC2(1, "map file failed");
		}

		if (fd != -1)
			FUNC1(fd);

		char s[10] = {0, };
		FUNC5(buf, s, 10);
		ret = FUNC7(buf, page_size);
		if (ret != 0) {
			FUNC2(1, "unmap file failed");
		}
	}
}