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
 char* _malloc_options ; 
 char* FUNC0 (char*) ; 
 char* malloc_options ; 
 int ngx_debug_malloc ; 
 scalar_t__ FUNC1 (char*,char) ; 

void
FUNC2(void)
{
#if (NGX_DEBUG_MALLOC)

#if __FreeBSD_version >= 500014 && __FreeBSD_version < 1000011
    _malloc_options = "J";
#elif __FreeBSD_version < 500014
    malloc_options = "J";
#endif

    ngx_debug_malloc = 1;

#else
    char  *mo;

    mo = FUNC0("MALLOC_OPTIONS");

    if (mo && FUNC1(mo, 'J')) {
        ngx_debug_malloc = 1;
    }
#endif
}