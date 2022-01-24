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
struct dirent {char* d_name; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int SEAF_PATH_MAX ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 size_t FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (char*,char*,char*) ; 
 int FUNC5 (char*,char const*) ; 

__attribute__((used)) static int
FUNC6(struct dirent *dir, const char *process_name)
{
    char path[512];
    /* fisrst construct a path like /proc/123/exe */
    if (FUNC4 (path, "/proc/%s/exe", dir->d_name) < 0) {
        return -1;
    }

    char buf[SEAF_PATH_MAX];
    /* get the full path of exe */
    ssize_t l = FUNC3(path, buf, SEAF_PATH_MAX);

    if (l < 0)
        return -1;
    buf[l] = '\0';

    /* get the base name of exe */
    char *base = FUNC2(buf);
    int ret = FUNC5(base, process_name);
    FUNC1(base);

    if (ret == 0)
        return FUNC0(dir->d_name);
    else
        return -1;
}