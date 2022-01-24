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
struct cache_entry {int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  sha1; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct cache_entry* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 struct cache_entry* FUNC6 (struct cache_entry*,char const*) ; 
 int FUNC7 (char const*) ; 

struct cache_entry *FUNC8(unsigned int mode,
                                     const unsigned char *sha1, 
                                     const char *path, const char *full_path, 
                                     int stage, int refresh)
{
    int size, len;
    struct cache_entry *ce;

    /* if (!verify_path(path)) { */
    /*     seaf_warning("Invalid path '%s'", path); */
    /*     return NULL; */
    /* } */

    len = FUNC7(path);
    size = FUNC0(len);
    ce = FUNC1(1, size);

    FUNC4(ce->sha1, sha1);
    FUNC5(ce->name, path, len);
    ce->ce_flags = FUNC2(len, stage);
    ce->ce_mode = FUNC3(mode);

    if (refresh)
        return FUNC6(ce, full_path);

    return ce;
}