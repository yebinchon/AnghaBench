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
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {char* name; int /*<<< orphan*/  ce_mode; } ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  IndexDirent ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  compare_index_dents ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ ,struct cache_entry*) ; 
 int FUNC8 (struct index_state*,char const*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (char*,char) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 

GList *
FUNC13 (struct index_state *istate, const char *dir)
{
    char *full_dir;
    int pathlen;
    int pos;
    struct cache_entry *ce;
    GList *dirents = NULL;
    char *path, *slash, *dname;
    gboolean is_dir;
    IndexDirent *dirent;

    if (dir[0] == 0) {
        pos = 0;
        full_dir = FUNC5(dir);
        pathlen = 0;
        goto collect_dents;
    } else {
        pathlen = FUNC11(dir);
        pos = FUNC8 (istate, dir, pathlen);
    }

    /* Exact match, it's an empty dir. */
    if (pos >= 0) {
        return NULL;
    }

    /* Otherwise it may be a prefix match, there may be dirents under the dir.
     */

    /* -pos = (the position this entry *should* be) + 1.
     * So -pos-1 is the first entry larger than this entry.
     */
    pos = -pos-1;

    /* Add '/' to the end of prefix so that we won't match a partial path component.
     * e.g. we don't want to match 'abc' with 'abcd/ef'
     */
    full_dir = FUNC4 (dir, "/", NULL);
    ++pathlen;

    while (pos < istate->cache_nr) {
        ce = istate->cache[pos];
        if (FUNC12 (ce->name, full_dir, pathlen) < 0) {
            ++pos;
        } else
            break;
    }

    /* The dir actually doesn't exist. */
    if (pos == istate->cache_nr) {
        FUNC1 (full_dir);
        return NULL;
    }

collect_dents:
    for (; pos < istate->cache_nr; ++pos) {
        ce = istate->cache[pos];

        if (FUNC12 (full_dir, ce->name, pathlen) != 0)
            break;

        path = ce->name + pathlen;
        slash = FUNC10(path, '/');
        if (slash) {
            dname = FUNC6(path, slash - path);
            if (FUNC9 (dirents, dname)) {
                FUNC1 (dname);
                continue;
            }

            dirent = FUNC7 (dname, TRUE, NULL);
            dirents = FUNC2 (dirents, dirent);
        } else {
            dname = FUNC5(path);
            is_dir = FUNC0(ce->ce_mode);
            dirent = FUNC7 (dname, is_dir, ce);
            dirents = FUNC2 (dirents, dirent);
        }
    }

    dirents = FUNC3 (dirents, compare_index_dents);

    FUNC1 (full_dir);
    return dirents;
}