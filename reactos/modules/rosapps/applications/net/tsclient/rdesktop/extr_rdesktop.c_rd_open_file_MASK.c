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
 int O_CREAT ; 
 int O_RDWR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 

int
FUNC4(char *filename)
{
	char *home;
	char fn[256];
	int fd;

	home = FUNC0("HOME");
	if (home == NULL)
		return -1;
	FUNC3(fn, "%s/.rdesktop/%s", home, filename);
	fd = FUNC1(fn, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
	if (fd == -1)
		FUNC2(fn);
	return fd;
}