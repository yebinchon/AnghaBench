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
 int /*<<< orphan*/  LOG_VVERB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,void*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char const*,int) ; 
 void* FUNC3 (void*,size_t) ; 

void *
FUNC4(void *ptr, size_t size, const char *name, int line)
{
    void *p;

    FUNC0(size != 0);

    p = FUNC3(ptr, size);
    if (p == NULL) {
        FUNC2("realloc(%zu) failed @ %s:%d", size, name, line);
    } else {
        FUNC1(LOG_VVERB, "realloc(%zu) at %p @ %s:%d", size, p, name, line);
    }

    return p;
}