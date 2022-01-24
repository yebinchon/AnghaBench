#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_11__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_10__ {char const* repo_id; int version; char const* modifier; char const* worktree; int /*<<< orphan*/ * options; int /*<<< orphan*/ ** remain_files; int /*<<< orphan*/ * total_size; int /*<<< orphan*/ * ignore_list; int /*<<< orphan*/  ignore_empty_dir; int /*<<< orphan*/ * crypt; struct index_state* istate; } ;
struct TYPE_9__ {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_1__ SeafStat ;
typedef  int /*<<< orphan*/  GQueue ;
typedef  int /*<<< orphan*/  GList ;
typedef  TYPE_2__ AddParams ;
typedef  int /*<<< orphan*/  AddOptions ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PATH_SEPERATOR ; 
 int /*<<< orphan*/  SYNC_STATUS_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char const*,struct index_state*,char const*,char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,TYPE_1__*) ; 
 TYPE_4__* seaf ; 
 scalar_t__ FUNC8 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static int
FUNC11 (const char *repo_id,
               int version,
               const char *modifier,
               struct index_state *istate, 
               const char *worktree,
               const char *path,
               SeafileCrypt *crypt,
               gboolean ignore_empty_dir,
               GList *ignore_list,
               gint64 *total_size,
               GQueue **remain_files,
               AddOptions *options)
{
    char *full_path;
    SeafStat st;

    full_path = FUNC5 (PATH_SEPERATOR, worktree, path, NULL);
    if (FUNC8 (full_path, &st) < 0) {
        /* Ignore broken symlinks on Linux and Mac OS X */
        if (FUNC7 (full_path, &st) == 0 && FUNC1(st.st_mode)) {
            FUNC6 (full_path);
            return 0;
        }
        FUNC10 ("Failed to stat %s.\n", full_path);
        FUNC6 (full_path);
        /* Ignore error. */

        FUNC9 (seaf->sync_mgr,
                                              repo_id,
                                              path,
                                              0,
                                              SYNC_STATUS_ERROR);

        return 0;
    }

    if (FUNC2(st.st_mode)) {
        FUNC4 (repo_id,
                  version,
                  modifier,
                  istate,
                  path,
                  full_path,
                  &st,
                  crypt,
                  total_size,
                  remain_files,
                  options);
    } else if (FUNC0(st.st_mode)) {
        AddParams params = {
            .repo_id = repo_id,
            .version = version,
            .modifier = modifier,
            .istate = istate,
            .worktree = worktree,
            .crypt = crypt,
            .ignore_empty_dir = ignore_empty_dir,
            .ignore_list = ignore_list,
            .total_size = total_size,
            .remain_files = remain_files,
            .options = options,
        };

        FUNC3 (path, full_path, &st, &params, FALSE);
    }

    FUNC6 (full_path);
    return 0;
}