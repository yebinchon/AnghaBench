#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,TYPE_1__*) ; 
 int FUNC4 (char*) ; 

int
FUNC5 (const char *dir)
{
    SeafStat st;

#ifdef WIN32
    /* remove trailing '\\' */
    char *path = g_strdup(dir);
    char *p = (char *)path + strlen(path) - 1;
    while (*p == '\\' || *p == '/') *p-- = '\0';
    if ((seaf_stat(dir, &st) < 0) || !S_ISDIR(st.st_mode)) {
        g_free (path);
        return -1;
    }
    g_free (path);
    return 0;
#else
    if ((FUNC3(dir, &st) < 0) || !FUNC0(st.st_mode))
        return -1;
    return 0;
#endif
}