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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int*) ; 

__attribute__((used)) static inline int FUNC2(const char *s, int32_t *ret_i) {
        FUNC0(sizeof(int32_t) == sizeof(int));
        return FUNC1(s, (int*) ret_i);
}