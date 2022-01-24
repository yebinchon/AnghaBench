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
typedef  int /*<<< orphan*/  uio_seg_t ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,struct iovec*,size_t,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

inline ssize_t
FUNC1(struct inode *ip, const char *buf, size_t len, loff_t *ppos,
    uio_seg_t segment, int flags, cred_t *cr)
{
	struct iovec iov;

	iov.iov_base = (void *)buf;
	iov.iov_len = len;

	return (FUNC0(ip, &iov, len, 1, ppos, segment,
	    flags, cr, 0));
}