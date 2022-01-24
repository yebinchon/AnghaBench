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
typedef  void uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static inline void *FUNC3(const void *p, size_t sz, const char *token) {
        size_t n, i;

        FUNC1(token);

        n = FUNC2(token);
        if (sz < n)
                return NULL;

        FUNC1(p);

        for (i = 0; i < n; i++) {
                if (FUNC0(((char *)p)[i]) != FUNC0(token[i]))
                        return NULL;
        }

        return (uint8_t*) p + n;
}