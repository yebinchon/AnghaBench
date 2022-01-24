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
typedef  int /*<<< orphan*/  time_t ;
struct stat {int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 

void
FUNC2(char *fname, time_t *tvp)
{
	struct stat sb;

	if (FUNC1(fname, &sb))
		FUNC0(1, "%s", fname);
	tvp[0] = sb.st_atime;
	tvp[1] = sb.st_mtime;
}