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
struct TYPE_3__ {char* path; size_t ImageBase; } ;
typedef  TYPE_1__ LIST_MEMBER ;

/* Variables and functions */
 size_t INVALID_BASE ; 
 int /*<<< orphan*/  cache ; 
 char* FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 
 int FUNC5 (char*,size_t,char*) ; 

__attribute__((used)) static int
FUNC6(const char *cpath, size_t offset, char *toString)
{
    size_t base = 0;
    LIST_MEMBER *pentry = NULL;
    int res = 0;
    char *path, *dpath;

    dpath = path = FUNC0(cpath);
    if (!path)
        return 1;

    // The path could be absolute:
    if (FUNC3(path, &base))
    {
        pentry = FUNC1(&cache, path);
        if (pentry)
        {
            path = pentry->path;
            base = pentry->ImageBase;
            if (base == INVALID_BASE)
            {
                FUNC4(1, "No, or invalid base address: %s\n", path);
                res = 2;
            }
        }
        else
        {
            FUNC4(1, "Not found in cache: %s\n", path);
            res = 3;
        }
    }

    if (!res)
    {
        res = FUNC5(path, offset, toString);
    }

    FUNC2(dpath);
    return res;
}