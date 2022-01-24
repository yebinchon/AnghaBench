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
typedef  int /*<<< orphan*/  SORT_TYPE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline size_t FUNC1(SORT_TYPE *dst, const SORT_TYPE x,
    const size_t size) {
  size_t l, c, r;
  SORT_TYPE cx;
  l = 0;
  r = size - 1;
  c = r >> 1;

  /* check for out of bounds at the beginning. */
  if (FUNC0(x, dst[0]) < 0) {
    return 0;
  } else if (FUNC0(x, dst[r]) > 0) {
    return r;
  }

  cx = dst[c];

  while (1) {
    const int val = FUNC0(x, cx);

    if (val < 0) {
      if (c - l <= 1) {
        return c;
      }

      r = c;
    } else { /* allow = for stability. The binary search favors the right. */
      if (r - c <= 1) {
        return c + 1;
      }

      l = c;
    }

    c = l + ((r - l) >> 1);
    cx = dst[c];
  }
}