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
 char* FUNC0 (char*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 

char*
FUNC3 (const char *path)
{
    int path_len = FUNC2 (path);
    char *rpath;
    if (path[0] != '/') {
        rpath = FUNC0 ("/", path, NULL);
        path_len++;
    } else {
        rpath = FUNC1 (path);
    }
    while (path_len > 1 && rpath[path_len-1] == '/') {
        rpath[path_len-1] = '\0';
        path_len--;
    }

    return rpath;
}