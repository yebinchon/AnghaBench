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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int SUCCESS ; 
 int FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*) ; 
 int /*<<< orphan*/  script_io ; 

enum status_code
FUNC4(const char *path)
{
	if (FUNC2())
		return FUNC0("Scripts cannot be run from scripts");

	char buf[SIZEOF_STR];

	if (!FUNC3(buf, sizeof(buf), path))
		return FUNC0("Failed to expand path: %s", path);

	return FUNC1(&script_io, "%s", buf)
		? SUCCESS : FUNC0("Failed to open %s", buf);
}