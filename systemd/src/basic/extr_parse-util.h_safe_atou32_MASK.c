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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,unsigned int*) ; 

__attribute__((used)) static inline int FUNC2(const char *s, uint32_t *ret_u) {
        FUNC0(sizeof(uint32_t) == sizeof(unsigned));
        return FUNC1(s, (unsigned*) ret_u);
}