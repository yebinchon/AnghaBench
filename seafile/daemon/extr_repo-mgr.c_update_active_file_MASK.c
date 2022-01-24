#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
struct cache_entry {int dummy; } ;
typedef  scalar_t__ gboolean ;
struct TYPE_5__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  is_readonly; } ;
typedef  scalar_t__ SyncStatus ;
typedef  int /*<<< orphan*/  SeafStat ;
typedef  TYPE_1__ SeafRepo ;

/* Variables and functions */
 scalar_t__ SYNC_STATUS_IGNORED ; 
 scalar_t__ SYNC_STATUS_SYNCED ; 
 scalar_t__ SYNC_STATUS_SYNCING ; 
 int /*<<< orphan*/  S_IFREG ; 
 scalar_t__ FUNC0 (struct cache_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC1 (struct index_state*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6 (SeafRepo *repo,
                    const char *path,
                    SeafStat *st,
                    struct index_state *istate,
                    gboolean ignored)
{
    if (ignored) {
        FUNC4 (seaf->sync_mgr,
                                              repo->id,
                                              path,
                                              S_IFREG,
                                              SYNC_STATUS_IGNORED);
    } else {
        SyncStatus status;
        gboolean is_writable;

        struct cache_entry *ce = FUNC1(istate, path, FUNC5(path), 0);
        if (!ce || FUNC0(ce, st, 0) != 0)
            status = SYNC_STATUS_SYNCING;
        else
            status = SYNC_STATUS_SYNCED;

        is_writable = FUNC2 (repo->id, repo->is_readonly, path);

        if (!is_writable && status == SYNC_STATUS_SYNCING)
            FUNC3 (seaf->sync_mgr,
                                                  repo->id,
                                                  path);
        else
            FUNC4 (seaf->sync_mgr,
                                                  repo->id,
                                                  path,
                                                  S_IFREG,
                                                  status);
    }
}