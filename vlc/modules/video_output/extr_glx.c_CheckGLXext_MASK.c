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
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,size_t const) ; 
 size_t FUNC2 (char const*,char*) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static bool FUNC5 (Display *dpy, unsigned snum, const char *ext)
{
    const char *exts = FUNC0 (dpy, snum);
    const size_t extlen = FUNC3 (ext);

    while (*exts)
    {
        exts += FUNC4 (exts, " ");

        size_t len = FUNC2 (exts, " ");
        if (len == extlen && !FUNC1 (exts, ext, extlen))
            return true;
        exts += len;
    }
    return false;
}