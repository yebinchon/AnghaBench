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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (void**,size_t,size_t) ; 

__attribute__((used)) static void FUNC3(size_t align, size_t size)
{
    void *p;
    int val = FUNC2(&p, align, size);

    if (align >= sizeof (void *)) {
        if (val == 0) {
            FUNC0(((uintptr_t)p & (align - 1)) == 0);
            FUNC1(p);
        }
    } else
        FUNC0(val != 0);
}