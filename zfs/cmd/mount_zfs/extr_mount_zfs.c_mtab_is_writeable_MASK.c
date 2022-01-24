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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,struct stat*) ; 
 int FUNC3 (char*,int,int) ; 

__attribute__((used)) static int
FUNC4(void)
{
	struct stat st;
	int error, fd;

	error = FUNC2("/etc/mtab", &st);
	if (error || FUNC0(st.st_mode))
		return (0);

	fd = FUNC3("/etc/mtab", O_RDWR | O_CREAT, 0644);
	if (fd < 0)
		return (0);

	FUNC1(fd);
	return (1);
}