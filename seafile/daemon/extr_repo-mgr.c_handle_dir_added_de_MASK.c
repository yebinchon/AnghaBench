#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sec; } ;
struct cache_entry {int ce_flags; TYPE_1__ ce_mtime; } ;
typedef  scalar_t__ gboolean ;
struct TYPE_8__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_7__ {int /*<<< orphan*/  mtime; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ IgnoreReason ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_2__ DiffEntry ;

/* Variables and functions */
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_OK_TO_REPLACE ; 
 int CE_REMOVE ; 
 scalar_t__ FALSE ; 
 scalar_t__ IGNORE_REASON_END_SPACE_PERIOD ; 
 scalar_t__ IGNORE_REASON_INVALID_CHARACTER ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_PATH_END_SPACE_PERIOD ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_PATH_INVALID_CHARACTER ; 
 int /*<<< orphan*/  SYNC_STATUS_SYNCED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct index_state*,struct cache_entry*,int) ; 
 struct cache_entry* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cache_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cache_entry* FUNC3 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (const char *repo_id,
                     const char *repo_name,
                     const char *worktree,
                     struct index_state *istate,
                     DiffEntry *de,
                     GHashTable *conflict_hash,
                     GHashTable *no_conflict_hash)
{
    FUNC4 ("Checkout empty dir %s.\n", de->name);

    struct cache_entry *ce;
    gboolean add_ce = FALSE;

    ce = FUNC3 (istate, de->name, FUNC9(de->name), 0);
    if (!ce) {
        ce = FUNC1 (de);
        add_ce = TRUE;
    }

    IgnoreReason reason;
    if (FUNC8 (de->name, &reason)) {
        FUNC5 ("Path %s is invalid on Windows, skip checkout\n",
                      de->name);
        if (reason == IGNORE_REASON_END_SPACE_PERIOD)
            FUNC7 (repo_id, repo_name, de->name,
                                               SYNC_ERROR_ID_PATH_END_SPACE_PERIOD);
        else if (reason == IGNORE_REASON_INVALID_CHARACTER)
            FUNC7 (repo_id, repo_name, de->name,
                                               SYNC_ERROR_ID_PATH_INVALID_CHARACTER);
        goto update_index;
    }

    FUNC2 (worktree,
                        de->name,
                        de->mtime,
                        ce,
                        conflict_hash,
                        no_conflict_hash);

    FUNC6 (seaf->sync_mgr,
                                          repo_id,
                                          de->name,
                                          de->mode,
                                          SYNC_STATUS_SYNCED);

update_index:
    if (add_ce) {
        if (!(ce->ce_flags & CE_REMOVE)) {
            FUNC0 (istate, ce,
                             (ADD_CACHE_OK_TO_ADD|ADD_CACHE_OK_TO_REPLACE));
        }
    } else
        ce->ce_mtime.sec = de->mtime;
}