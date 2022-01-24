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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  PKGDATADIR ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(void)
{
    const char *path = FUNC2 ("VLC_DATA_PATH");
    if (path)
        return FUNC0( path );

    return FUNC1( PKGDATADIR );
}