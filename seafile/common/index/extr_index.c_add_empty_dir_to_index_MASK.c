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
struct index_state {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  SeafStat ;

/* Variables and functions */
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_OK_TO_REPLACE ; 
 int /*<<< orphan*/  CE_ADDED ; 
 scalar_t__ FUNC0 (struct index_state*,struct cache_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*) ; 
 struct cache_entry* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry*) ; 
 struct cache_entry* FUNC4 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct index_state*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

int
FUNC8 (struct index_state *istate, const char *path, SeafStat *st)
{
    struct cache_entry *ce, *alias;
    int add_option = (ADD_CACHE_OK_TO_ADD|ADD_CACHE_OK_TO_REPLACE);

    ce = FUNC2 (path, st);

    if (FUNC5 (istate, ce)) {
        FUNC3 (ce);
        return 0;
    }

    alias = FUNC4(istate, ce->name, FUNC1(ce), 0);
    if (alias) {
        FUNC3 (ce);
        return 0;
    } else {
#if defined WIN32 || defined __APPLE__
        alias = index_name_exists (istate, ce->name, ce_namelen(ce), 1);
        /* If file exists case-insensitively but doesn't exist case-sensitively,
         * that file is actually being renamed.
         */
        if (alias) {
            remove_file_from_index (istate, alias->name);
            alias = NULL;
        }
#endif
    }

    ce->ce_flags |= CE_ADDED;

    if (FUNC0(istate, ce, add_option)) {
        FUNC7("unable to add %s to index\n",path);
        FUNC3 (ce);
        return -1;
    }

    return 1;
}