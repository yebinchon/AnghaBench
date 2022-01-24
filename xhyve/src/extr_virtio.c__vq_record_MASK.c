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
typedef  int /*<<< orphan*/  uint16_t ;
struct virtio_desc {int /*<<< orphan*/  vd_flags; int /*<<< orphan*/  vd_len; int /*<<< orphan*/  vd_addr; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(int i, volatile struct virtio_desc *vd, struct iovec *iov, int n_iov,
	uint16_t *flags)
{
	if (i >= n_iov)
		return;
	iov[i].iov_base = FUNC0(vd->vd_addr, vd->vd_len);
	iov[i].iov_len = vd->vd_len;
	if (flags != NULL)
		flags[i] = vd->vd_flags;
}