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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const* const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const* const,int /*<<< orphan*/ * const) ; 

__attribute__((used)) static void FUNC2(uint32_t bits, const int16_t* const src,
                          uint8_t* const dst) {
  if (bits & 0xff) {    // any non-zero coeff at all?
    if (bits & 0xaa) {  // any non-zero AC coefficient?
      FUNC1(src, dst);   // note we don't use the AC3 variant for U/V
    } else {
      FUNC0(src, dst);
    }
  }
}