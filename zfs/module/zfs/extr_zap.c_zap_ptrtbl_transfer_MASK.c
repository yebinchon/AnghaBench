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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(const uint64_t *src, uint64_t *dst, int n)
{
	for (int i = 0; i < n; i++) {
		uint64_t lb = src[i];
		dst[2 * i + 0] = lb;
		dst[2 * i + 1] = lb;
	}
}