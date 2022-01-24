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
struct kiocb {int dummy; } ;
struct iovec {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int /*<<< orphan*/  VERIFY_WRITE ; 
 scalar_t__ FUNC0 (struct iovec const*,unsigned long*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kiocb*,struct iovec const*,unsigned long,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC2(struct kiocb *kiocb, const struct iovec *iovp,
    unsigned long nr_segs, loff_t pos)
{
	ssize_t ret;
	size_t count;

	ret = FUNC0(iovp, &nr_segs, &count, VERIFY_WRITE);
	if (ret)
		return (ret);

	return (FUNC1(kiocb, iovp, nr_segs, count,
	    UIO_USERSPACE, 0));
}