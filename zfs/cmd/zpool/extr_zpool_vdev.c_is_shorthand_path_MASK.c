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
struct stat64 {int dummy; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct stat64*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char*,struct stat64*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (char const*,char*,size_t) ; 

__attribute__((used)) static int
FUNC5(const char *arg, char *path, size_t path_size,
    struct stat64 *statbuf, boolean_t *wholedisk)
{
	int error;

	error = FUNC4(arg, path, path_size);
	if (error == 0) {
		*wholedisk = FUNC3(path);
		if (*wholedisk || (FUNC1(path, statbuf) == 0))
			return (0);
	}

	FUNC2(path, arg, path_size);
	FUNC0(statbuf, 0, sizeof (*statbuf));
	*wholedisk = B_FALSE;

	return (error);
}