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
typedef  int /*<<< orphan*/  zio_cksum_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_FLETCHER_4_INC_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(boolean_t native, const void *buf, uint64_t size,
    zio_cksum_t *zcp)
{
	while (size > 0) {
		zio_cksum_t nzc;
		uint64_t len = FUNC0(size, ZFS_FLETCHER_4_INC_MAX_SIZE);

		if (native)
			FUNC3(buf, len, NULL, &nzc);
		else
			FUNC1(buf, len, NULL, &nzc);

		FUNC2(zcp, len, &nzc);

		size -= len;
		buf += len;
	}
}