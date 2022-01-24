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
typedef  scalar_t__ char16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*) ; 

size_t FUNC1(const char16_t *s) {
        size_t n = 0;

        FUNC0(s);

        while (*s != 0)
                n++, s++;

        return n;
}