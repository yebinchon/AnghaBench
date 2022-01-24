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
 char NUL ; 
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char*) ; 
 char FUNC2 (char) ; 

int
FUNC3(char *path)
{
    if (path[0] == NUL)		/* just checking... */
	return 0;
    if (path[1] == ':')		/* has a drive name */
    {
	if (FUNC0(FUNC2(path[0]) - 'A' + 1))
	    return -1;		/* invalid drive name */
	path += 2;
    }
    if (*path == NUL)		/* drive name only */
	return 0;
    return FUNC1(path);		/* let the normal chdir() do the rest */
}