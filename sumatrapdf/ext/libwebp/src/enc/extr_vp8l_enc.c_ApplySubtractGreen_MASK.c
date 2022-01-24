#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  argb_; } ;
typedef  TYPE_1__ VP8LEncoder ;
typedef  int /*<<< orphan*/  VP8LBitWriter ;

/* Variables and functions */
 int /*<<< orphan*/  SUBTRACT_GREEN ; 
 int /*<<< orphan*/  TRANSFORM_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(VP8LEncoder* const enc, int width, int height,
                               VP8LBitWriter* const bw) {
  FUNC0(bw, TRANSFORM_PRESENT, 1);
  FUNC0(bw, SUBTRACT_GREEN, 2);
  FUNC1(enc->argb_, width * height);
}