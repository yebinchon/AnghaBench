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
typedef  int /*<<< orphan*/  VP8LBitWriter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ * const,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 

int FUNC2(VP8LBitWriter* const bw, size_t expected_size) {
  FUNC1(bw, 0, sizeof(*bw));
  return FUNC0(bw, expected_size);
}