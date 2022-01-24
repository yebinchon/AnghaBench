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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 

__attribute__((used)) static inline bool FUNC1(const uint8_t *p_buf, size_t i_buf)
{
    return !FUNC0(p_buf) || (i_buf < 2) || !(p_buf[1] >> 3);
}