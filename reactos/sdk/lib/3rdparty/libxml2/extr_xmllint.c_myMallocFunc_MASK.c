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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ maxmem ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void *
FUNC4(size_t size)
{
    void *ret;

    ret = FUNC2(size);
    if (ret != NULL) {
        if (FUNC3() > maxmem) {
            FUNC0();
            FUNC1(ret);
            return (NULL);
        }
    }
    return (ret);
}