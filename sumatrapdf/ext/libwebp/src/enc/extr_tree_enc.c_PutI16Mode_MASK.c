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
typedef  int /*<<< orphan*/  VP8BitWriter ;

/* Variables and functions */
 int H_PRED ; 
 int TM_PRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int,int) ; 
 int V_PRED ; 

__attribute__((used)) static void FUNC1(VP8BitWriter* const bw, int mode) {
  if (FUNC0(bw, (mode == TM_PRED || mode == H_PRED), 156)) {
    FUNC0(bw, mode == TM_PRED, 128);    // TM or HE
  } else {
    FUNC0(bw, mode == V_PRED, 163);     // VE or DC
  }
}