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
 char* FUNC0 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4 (const char *path)
{
    int len = FUNC3(path);
    char *copy, *ret;

    if (FUNC2 (path, "/") == 0)
        return FUNC1(path);

    if (path[0] == '/' && path[len-1] != '/')
        return FUNC1(path);

    copy = FUNC1(path);

    if (copy[len-1] == '/')
        copy[len-1] = 0;

    if (copy[0] != '/')
        ret = FUNC0 ("/", copy, NULL);
    else
        ret = copy;

    return ret;
}