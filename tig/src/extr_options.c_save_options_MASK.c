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
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC4 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

enum status_code
FUNC9(const char *path)
{
	int fd = FUNC4(path, O_WRONLY | O_CREAT | O_EXCL, 0666);
	FILE *file = fd != -1 ? FUNC2(fd, "w") : NULL;
	enum status_code code = SUCCESS;

	if (!file)
		return FUNC0("%s", FUNC8(errno));

	if (!FUNC3(file, "%s", "# Saved by Tig\n")
	    || !FUNC7(file)
	    || !FUNC6(file)
	    || !FUNC5(file))
		code = FUNC0("Write returned an error");

	FUNC1(file);
	return code;
}