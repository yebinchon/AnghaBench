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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int FUNC1 (void const*,void const*,size_t) ; 

__attribute__((used)) static inline int FUNC2(const void *s1, const void *s2, size_t n) {
        if (n == 0)
                return 0;
        FUNC0(s1);
        FUNC0(s2);
        return FUNC1(s1, s2, n);
}