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
 int FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 scalar_t__ FUNC2 (void const*,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(const void *s1, size_t n1, const void *s2, size_t n2) {
        return FUNC2(s1, s2, FUNC1(n1, n2))
            ?: FUNC0(n1, n2);
}