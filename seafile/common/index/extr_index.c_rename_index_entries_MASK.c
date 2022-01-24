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
struct index_state {int cache_alloc; int cache_nr; int cache_changed; scalar_t__ cache; } ;
struct cache_entry {int dummy; } ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  CECallback ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct index_state*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*) ; 
 struct cache_entry** FUNC2 (struct index_state*,char const*,char const*,int*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry**) ; 
 int FUNC4 (struct index_state*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct cache_entry**,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct index_state*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct index_state*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (char const*) ; 

int
FUNC11 (struct index_state *istate,
                      const char *src_path,
                      const char *dst_path,
                      gboolean *not_found,
                      CECallback cb_after_rename,
                      void *cb_data)
{
    struct cache_entry **new_ces;
    int n_entries;
    int ret = 0;
    int i;

    if (not_found)
        *not_found = FALSE;

    new_ces = FUNC2 (istate, src_path, dst_path, &n_entries,
                                            cb_after_rename, cb_data);
    if (n_entries == 0) {
        if (not_found)
            *not_found = TRUE;
        return 0;
    }

    /* Remove entries under dst_path. It's necessary for the situation that
     * one file is renamed to overwrite another file.
     */
    FUNC8 (istate, dst_path, NULL);

    FUNC7 (istate, dst_path);

    /* Insert the renamed entries to their position. */
    int dst_pathlen = FUNC10(dst_path);
    int pos = FUNC4 (istate, dst_path, dst_pathlen);
    if (pos >= 0) {
        FUNC9 ("BUG: %s should not exist in index after remove.\n", dst_path);
        ret = -1;
        goto out;
    }

    pos = -pos-1;

    /* There should be at least n_entries free room in istate->cache array,
     * since we just removed n_entries from the index in
     * create_renamed_cache_entires(). 
     */
    if (istate->cache_alloc - istate->cache_nr < n_entries) {
        FUNC9 ("BUG: not enough room to insert renamed entries.\n"
                   "cache_alloc: %u, cache_nr: %u, n_entries: %d.\n",
                   istate->cache_alloc, istate->cache_nr, n_entries);
        ret = -1;
        goto out;
    }

    if (pos < istate->cache_nr)
        FUNC6 (istate->cache + pos + n_entries,
                 istate->cache + pos,
                 (istate->cache_nr - pos) * sizeof(struct cache_entry *));

    FUNC5 (istate->cache + pos, new_ces, n_entries * sizeof(struct cache_entry *));
    for (i = 0; i < n_entries; ++i)
        FUNC0 (istate, new_ces[i]);
    istate->cache_nr += n_entries;
    istate->cache_changed = 1;

out:
    if (ret < 0) {
        for (i = 0; i < n_entries; ++i)
            FUNC1 (new_ces[i]);
    }
    FUNC3 (new_ces);

    return ret;
}