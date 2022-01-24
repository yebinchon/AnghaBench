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
 int FORMAT_BYTES_BELOW_POINT ; 
 int FORMAT_BYTES_MAX ; 
 int FORMAT_BYTES_TRAILING_B ; 
 int FORMAT_BYTES_USE_IEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC3(uint64_t val, bool trailing_B, const char *iec_with_p, const char *iec_without_p,
                                  const char *si_with_p, const char *si_without_p) {
        char buf[FORMAT_BYTES_MAX];

        FUNC0(FUNC2(FUNC1(buf, sizeof buf, val, FORMAT_BYTES_USE_IEC | FORMAT_BYTES_BELOW_POINT | (trailing_B ? FORMAT_BYTES_TRAILING_B : 0)), iec_with_p));
        FUNC0(FUNC2(FUNC1(buf, sizeof buf, val, FORMAT_BYTES_USE_IEC | (trailing_B ? FORMAT_BYTES_TRAILING_B : 0)), iec_without_p));
        FUNC0(FUNC2(FUNC1(buf, sizeof buf, val, FORMAT_BYTES_BELOW_POINT | (trailing_B ? FORMAT_BYTES_TRAILING_B : 0)), si_with_p));
        FUNC0(FUNC2(FUNC1(buf, sizeof buf, val, trailing_B ? FORMAT_BYTES_TRAILING_B : 0), si_without_p));
}