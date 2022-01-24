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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,size_t) ; 

void *FUNC5(vlc_object_t *obj, size_t nmemb, size_t size)
{
    size_t tabsize;
    if (FUNC3(FUNC2(nmemb, size, &tabsize)))
    {
        errno = ENOMEM;
        return NULL;
    }

    void *ptr = FUNC4(obj, tabsize);
    if (FUNC0(ptr != NULL))
        FUNC1(ptr, 0, tabsize);
    return ptr;
}