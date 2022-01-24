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
 int FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 

char *FUNC3(const char *location)
{
    char *url, *path;

    /* Prepending "file://" is a bit hackish. But then again, we do not want
     * to hard-code the list of schemes that use file paths in vlc_uri2path().
     */
    if (FUNC0(&url, "file://%s", location) == -1)
        return NULL;

    path = FUNC2 (url);
    FUNC1 (url);
    return path;
}