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
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct iovec const*,int) ; 

__attribute__((used)) static ssize_t
FUNC3(int fd, const struct iovec *iov, int iovcnt, off_t offset)
{
	off_t res;

	res = FUNC1(fd, offset, SEEK_SET);
	FUNC0(res == offset);
	return FUNC2(fd, iov, iovcnt);
}