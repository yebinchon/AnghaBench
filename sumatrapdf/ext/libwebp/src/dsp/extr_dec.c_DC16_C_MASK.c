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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int BPS ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 

__attribute__((used)) static void FUNC1(uint8_t* dst) {    // DC
  int DC = 16;
  int j;
  for (j = 0; j < 16; ++j) {
    DC += dst[-1 + j * BPS] + dst[j - BPS];
  }
  FUNC0(DC >> 5, dst);
}