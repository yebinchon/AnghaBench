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
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 

__attribute__((used)) static boolean_t
FUNC2(const char *dirname)
{
	struct stat st;

	/*
	 * We only want to return false if the given path is a non empty
	 * directory, all other errors are handled elsewhere.
	 */
	if (FUNC1(dirname, &st) < 0 || !FUNC0(st.st_mode)) {
		return (B_TRUE);
	}

	/*
	 * An empty directory will still have two entries in it, one
	 * entry for each of "." and "..".
	 */
	if (st.st_size > 2) {
		return (B_FALSE);
	}

	return (B_TRUE);
}