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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(int fd, const void *buf, size_t nbytes, off_t offset)
{
	size_t nleft = nbytes;
	ssize_t nwrite = 0;

	nwrite = FUNC3(fd, buf, nbytes, offset);
	if (nwrite < 0) {
		FUNC2("pwrite");
		FUNC0(EXIT_FAILURE);
	}

	nleft -= nwrite;
	if (nleft != 0) {
		(void) FUNC1(stderr, "warning: pwrite: "
		    "wrote %zu out of %zu bytes\n",
		    (nbytes - nleft), nbytes);
	}
}