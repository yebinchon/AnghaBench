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
struct cache_entry {char* name; } ;

/* Variables and functions */
 int FUNC0 (struct cache_entry const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 int FUNC2 (char const*) ; 

int FUNC3(const struct cache_entry *ce, const char **pathspec)
{
    const char *match, *name;
    int len;

    if (!pathspec)
        return 1;

    len = FUNC0(ce);
    name = ce->name;
    while ((match = *pathspec++) != NULL) {
        int matchlen = FUNC2(match);
        if (matchlen > len)
            continue;
        if (FUNC1(name, match, matchlen))
            continue;
        if (matchlen && name[matchlen-1] == '/')
            return 1;
        if (name[matchlen] == '/' || !name[matchlen])
            return 1;
        if (!matchlen)
            return 1;
    }
    return 0;
}