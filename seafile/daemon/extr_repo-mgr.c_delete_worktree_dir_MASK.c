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
typedef  char wchar_t ;
struct index_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_REMOVE_UNCOMMITTED_FOLDER ; 
 int /*<<< orphan*/  FUNC0 (struct index_state*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,char const*,char*) ; 
 char* FUNC2 (char*,char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8 (const char *repo_id,
                     const char *repo_name,
                     struct index_state *istate,
                     const char *worktree,
                     const char *path)
{
    char *full_path = FUNC2 ("/", worktree, path, NULL);

#ifdef WIN32
    wchar_t *full_path_w = win32_long_path (full_path);
    delete_worktree_dir_recursive_win32 (istate, path, full_path_w);
    g_free (full_path_w);
#else
    FUNC0(istate, path, full_path);
#endif

    /* If for some reason the dir cannot be removed, try to move it to a trash folder
     * under Seafile folder. Otherwise the removed folder will be created agian on the
     * server, which will confuse the users.
     */
    if (FUNC3 (full_path, G_FILE_TEST_EXISTS)) {
        if (FUNC5 (full_path) == 0)
            FUNC6 (repo_id, repo_name, path,
                                               SYNC_ERROR_ID_REMOVE_UNCOMMITTED_FOLDER);
    }

    FUNC4 (full_path);
}