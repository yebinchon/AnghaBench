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

/* Variables and functions */
 int ERROR_FILE_DOES_NOT_EXIST ; 
 int FUNC0 (char*,...) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static enum status_code
FUNC3(int argc, const char *argv[])
{
	enum status_code code;
	bool quiet = false;

	if ((argc < 1) || (argc > 2))
		return FUNC0("Invalid source command: source [-q] <path>");

	if (argc == 2) {
		if (!FUNC2(argv[0], "-q"))
			quiet = true;
		else
			return FUNC0("Invalid source option: %s", argv[0]);
	}

	code = FUNC1(argv[argc - 1]);

	if (quiet)
		return code == ERROR_FILE_DOES_NOT_EXIST ? 0 : code;

	return code == ERROR_FILE_DOES_NOT_EXIST
		? FUNC0("File does not exist: %s", argv[argc - 1]) : code;
}