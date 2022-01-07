
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
struct index_state {int dummy; } ;


 int G_FILE_TEST_EXISTS ;
 int SYNC_ERROR_ID_REMOVE_UNCOMMITTED_FOLDER ;
 int delete_worktree_dir_recursive (struct index_state*,char const*,char*) ;
 int delete_worktree_dir_recursive_win32 (struct index_state*,char const*,char*) ;
 char* g_build_path (char*,char const*,char const*,int *) ;
 scalar_t__ g_file_test (char*,int ) ;
 int g_free (char*) ;
 scalar_t__ move_dir_to_recycle_bin (char*) ;
 int send_file_sync_error_notification (char const*,char const*,char const*,int ) ;
 char* win32_long_path (char*) ;

__attribute__((used)) static void
delete_worktree_dir (const char *repo_id,
                     const char *repo_name,
                     struct index_state *istate,
                     const char *worktree,
                     const char *path)
{
    char *full_path = g_build_path ("/", worktree, path, ((void*)0));






    delete_worktree_dir_recursive(istate, path, full_path);






    if (g_file_test (full_path, G_FILE_TEST_EXISTS)) {
        if (move_dir_to_recycle_bin (full_path) == 0)
            send_file_sync_error_notification (repo_id, repo_name, path,
                                               SYNC_ERROR_ID_REMOVE_UNCOMMITTED_FOLDER);
    }

    g_free (full_path);
}
