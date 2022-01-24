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
typedef  scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,int,int) ; 
 int SIZEOF_STR ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 

__attribute__((used)) static bool
FUNC2(time_t *last_modified, const char *path_fmt, ...)
{
	char path[SIZEOF_STR];
	struct stat stat;
	int retval;
	bool has_changed = !!*last_modified;

	FUNC0(path, sizeof(path), path_fmt, retval, false);

	if (retval < 0 ||
	    FUNC1(path, &stat) < 0 ||
	    stat.st_mtime <= *last_modified)
		return false;

	*last_modified = stat.st_mtime;
	return has_changed;
}