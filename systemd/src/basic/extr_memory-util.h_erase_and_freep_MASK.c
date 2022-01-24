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
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 size_t FUNC2 (void*) ; 

__attribute__((used)) static inline void FUNC3(void *p) {
        void *ptr = *(void**) p;

        if (ptr) {
                size_t l = FUNC2(ptr);
                FUNC0(ptr, l);
                FUNC1(ptr);
        }
}