#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_11__ {int /*<<< orphan*/  filelock_mgr; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; int /*<<< orphan*/  worktree; } ;
struct TYPE_9__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;
typedef  TYPE_2__ SeafRepo ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_7__* seaf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*,TYPE_1__*,struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char const*,struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (SeafRepo *repo, const char *path,
                     struct index_state *istate, GList *ignore_list)
{
    SeafStat st;
    gboolean ignored = FALSE;

    char *fullpath = FUNC2 (repo->worktree, path, NULL);
    if (FUNC5 (fullpath, &st) < 0) {
        FUNC3 (fullpath);
        return;
    }

    if (FUNC1 (repo->worktree, path, ignore_list))
        ignored = TRUE;

    if (FUNC0(st.st_mode)) {
        if (!FUNC4(seaf->filelock_mgr,
                                                  repo->id, path)) {
            FUNC6 (repo, path, &st, istate, ignored);
        }
    } else {
        FUNC7 (repo, path, istate, ignore_list, ignored);
    }

    FUNC3 (fullpath);
}