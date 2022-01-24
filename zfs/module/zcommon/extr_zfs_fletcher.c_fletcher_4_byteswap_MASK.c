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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  fletcher_4_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLETCHER_MIN_SIMD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const*,scalar_t__ const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

void
FUNC6(const void *buf, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
	const uint64_t p2size = FUNC2(size, FLETCHER_MIN_SIMD_SIZE);

	FUNC0(FUNC1(size, sizeof (uint32_t)));

	if (size == 0 || p2size == 0) {
		FUNC3(zcp, 0, 0, 0, 0);

		if (size > 0)
			FUNC5((fletcher_4_ctx_t *)zcp,
			    buf, size);
	} else {
		FUNC4(buf, p2size, zcp);

		if (p2size < size)
			FUNC5((fletcher_4_ctx_t *)zcp,
			    (char *)buf + p2size, size - p2size);
	}
}