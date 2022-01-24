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
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(const char **to, const char *from)
{
    if (from)
    {
        *to = FUNC0(from);
        if (FUNC1(!*to))
            return VLC_ENOMEM;
    }
    else
        *to = NULL;
    return VLC_SUCCESS;
}