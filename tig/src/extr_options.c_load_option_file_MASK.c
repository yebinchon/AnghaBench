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
struct io {int dummy; } ;
struct config_state {char const* member_0; int member_2; int errors; int /*<<< orphan*/  lineno; int /*<<< orphan*/  member_1; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int ERROR_FILE_DOES_NOT_EXIST ; 
 int SIZEOF_STR ; 
 int SUCCESS ; 
 int FUNC0 (char*,char const*,...) ; 
 scalar_t__ FUNC1 (struct io*) ; 
 int FUNC2 (struct io*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct config_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct io*,char*,char*) ; 
 char* FUNC4 (struct io*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char const*) ; 
 int /*<<< orphan*/  read_option ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static enum status_code
FUNC8(const char *path)
{
	struct config_state config = { path, 0, false };
	struct io io;
	char buf[SIZEOF_STR];

	/* Do not read configuration from stdin if set to "" */
	if (!path || !FUNC6(path))
		return SUCCESS;

	if (!FUNC5(buf, sizeof(buf), path))
		return FUNC0("Failed to expand path: %s", path);

	/* It's OK that the file doesn't exist. */
	if (!FUNC3(&io, "%s", buf)) {
		/* XXX: Must return ERROR_FILE_DOES_NOT_EXIST so missing
		 * system tigrc is detected properly. */
		if (FUNC1(&io) == ENOENT)
			return ERROR_FILE_DOES_NOT_EXIST;
		return FUNC0("Error loading file %s: %s", buf, FUNC4(&io));
	}

	if (FUNC2(&io, " \t", &config.lineno, read_option, &config) != SUCCESS ||
	    config.errors == true)
		FUNC7("Errors while loading %s.", buf);
	return SUCCESS;
}