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
struct vlc_res {void (* release ) (void*) ;void* payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,size_t,size_t*) ; 
 int /*<<< orphan*/  errno ; 
 struct vlc_res* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void *FUNC3(size_t size, void (*release)(void *))
{
    if (FUNC2(FUNC0(sizeof (struct vlc_res), size, &size)))
    {
        errno = ENOMEM;
        return NULL;
    }

    struct vlc_res *res = FUNC1(size);
    if (FUNC2(res == NULL))
        return NULL;

    res->release = release;
    return res->payload;
}