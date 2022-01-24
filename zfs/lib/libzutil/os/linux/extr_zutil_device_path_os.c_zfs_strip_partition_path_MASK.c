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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(char *path)
{
	char *newpath = FUNC1(path);
	char *sd_offset;
	char *new_sd;

	if (!newpath)
		return (NULL);

	/* Point to "sda1" part of "/dev/sda1" */
	sd_offset = FUNC4(newpath, '/') + 1;

	/* Get our new name "sda" */
	new_sd = FUNC5(sd_offset);
	if (!new_sd) {
		FUNC0(newpath);
		return (NULL);
	}

	/* Paste the "sda" where "sda1" was */
	FUNC2(sd_offset, new_sd, FUNC3(sd_offset) + 1);

	/* Free temporary "sda" */
	FUNC0(new_sd);

	return (newpath);
}