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
typedef  char uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static bool FUNC1(const void *_a, size_t s, const void *_b, size_t t) {
        const uint8_t *a = _a, *b = _b;
        size_t j;

        for (j = 0; j < s && j < t; j++) {

                if (a[j] != b[j])
                        return false;

                if (a[j] == '=')
                        return true;
        }

        FUNC0("\"=\" not found");
}