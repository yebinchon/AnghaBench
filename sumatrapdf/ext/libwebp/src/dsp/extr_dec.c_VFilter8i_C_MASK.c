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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC1(uint8_t* u, uint8_t* v, int stride,
                        int thresh, int ithresh, int hev_thresh) {
  FUNC0(u + 4 * stride, stride, 1, 8, thresh, ithresh, hev_thresh);
  FUNC0(v + 4 * stride, stride, 1, 8, thresh, ithresh, hev_thresh);
}