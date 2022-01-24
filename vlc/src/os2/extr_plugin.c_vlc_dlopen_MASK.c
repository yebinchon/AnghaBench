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
 int RTLD_LAZY ; 
 int RTLD_NOW ; 
 char* FUNC0 (char const*) ; 
 void* FUNC1 (char*,int const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void *FUNC4(const char *psz_file, bool lazy )
{
    const int flags = lazy ? RTLD_LAZY : RTLD_NOW;
    char *path = FUNC0( psz_file );
    if (FUNC3(path == NULL))
        return NULL;

    void *handle = FUNC1( path, flags );
    FUNC2( path );
    return handle;
}