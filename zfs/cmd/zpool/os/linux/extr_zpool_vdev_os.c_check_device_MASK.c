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
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkid_cache ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(const char *path, boolean_t force,
    boolean_t isspare, boolean_t iswholedisk)
{
	blkid_cache cache;
	int error;

	error = FUNC0(&cache, NULL);
	if (error != 0) {
		(void) FUNC3(stderr, "%s", FUNC4("unable to access the blkid "
		    "cache.\n"));
		return (-1);
	}

	error = FUNC2(path, cache, force, isspare, iswholedisk);
	FUNC1(cache);

	return (error);
}