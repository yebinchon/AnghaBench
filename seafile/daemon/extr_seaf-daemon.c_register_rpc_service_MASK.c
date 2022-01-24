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

/* Variables and functions */
 int /*<<< orphan*/  register_marshals ; 
 int /*<<< orphan*/  seafile_cancel_clone_task ; 
 int /*<<< orphan*/  seafile_check_path_for_clone ; 
 int /*<<< orphan*/  seafile_clone ; 
 int /*<<< orphan*/  seafile_destroy_repo ; 
 int /*<<< orphan*/  seafile_diff ; 
 int /*<<< orphan*/  seafile_disable_auto_sync ; 
 int /*<<< orphan*/  seafile_download ; 
 int /*<<< orphan*/  seafile_enable_auto_sync ; 
 int /*<<< orphan*/  seafile_find_transfer_task ; 
 int /*<<< orphan*/  seafile_gen_default_worktree ; 
 int /*<<< orphan*/  seafile_generate_magic_and_random_key ; 
 int /*<<< orphan*/  seafile_get_clone_tasks ; 
 int /*<<< orphan*/  seafile_get_config ; 
 int /*<<< orphan*/  seafile_get_config_int ; 
 int /*<<< orphan*/  seafile_get_download_rate ; 
 int /*<<< orphan*/  seafile_get_file_sync_errors ; 
 int /*<<< orphan*/  seafile_get_path_sync_status ; 
 int /*<<< orphan*/  seafile_get_repo ; 
 int /*<<< orphan*/  seafile_get_repo_list ; 
 int /*<<< orphan*/  seafile_get_repo_property ; 
 int /*<<< orphan*/  seafile_get_repo_sync_task ; 
 int /*<<< orphan*/  seafile_get_server_property ; 
 int /*<<< orphan*/  seafile_get_session_info ; 
 int /*<<< orphan*/  seafile_get_sync_notification ; 
 int /*<<< orphan*/  seafile_get_upload_rate ; 
 int /*<<< orphan*/  seafile_is_auto_sync_enabled ; 
 int /*<<< orphan*/  seafile_mark_file_locked ; 
 int /*<<< orphan*/  seafile_mark_file_unlocked ; 
 int /*<<< orphan*/  seafile_remove_clone_task ; 
 int /*<<< orphan*/  seafile_remove_repo_tokens_by_account ; 
 int /*<<< orphan*/  seafile_set_config ; 
 int /*<<< orphan*/  seafile_set_config_int ; 
 int /*<<< orphan*/  seafile_set_download_rate_limit ; 
 int /*<<< orphan*/  seafile_set_repo_property ; 
 int /*<<< orphan*/  seafile_set_repo_token ; 
 int /*<<< orphan*/  seafile_set_server_property ; 
 int /*<<< orphan*/  seafile_set_upload_rate_limit ; 
 int /*<<< orphan*/  seafile_shutdown ; 
 int /*<<< orphan*/  seafile_sync ; 
 int /*<<< orphan*/  seafile_sync_error_id_to_str ; 
 int /*<<< orphan*/  seafile_unsync_repos_by_account ; 
 int /*<<< orphan*/  seafile_update_repos_server_host ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static void
FUNC21 ()
{
    FUNC1 (register_marshals);

    FUNC0 ("seafile-rpcserver");
    FUNC0 ("seafile-threaded-rpcserver");

    /* seafile-rpcserver */
    FUNC2 ("seafile-rpcserver",
                                     seafile_sync_error_id_to_str,
                                     "seafile_sync_error_id_to_str",
                                     FUNC16());
    
    FUNC2 ("seafile-rpcserver",
                                     seafile_get_session_info,
                                     "seafile_get_session_info",
                                     FUNC12());

    FUNC2 ("seafile-rpcserver",
                                     seafile_get_config,
                                     "seafile_get_config",
                                     FUNC17());

    FUNC2 ("seafile-rpcserver",
                                     seafile_set_config,
                                     "seafile_set_config",
                                     FUNC6());

    FUNC2 ("seafile-rpcserver",
                                     seafile_get_config_int,
                                     "seafile_get_config_int",
                                     FUNC4());

    FUNC2 ("seafile-rpcserver",
                                     seafile_set_config_int,
                                     "seafile_set_config_int",
                                     FUNC5());

    FUNC2 ("seafile-rpcserver",
                                     seafile_set_upload_rate_limit,
                                     "seafile_set_upload_rate_limit",
                                     FUNC3());

    FUNC2 ("seafile-rpcserver",
                                     seafile_set_download_rate_limit,
                                     "seafile_set_download_rate_limit",
                                     FUNC3());

    FUNC2 ("seafile-rpcserver",
                                     seafile_unsync_repos_by_account,
                                     "seafile_unsync_repos_by_account",
                                     FUNC6());

    FUNC2 ("seafile-rpcserver",
                                     seafile_remove_repo_tokens_by_account,
                                     "seafile_remove_repo_tokens_by_account",
                                     FUNC6());

    FUNC2 ("seafile-rpcserver",
                                     seafile_set_repo_token,
                                     "seafile_set_repo_token",
                                     FUNC6());

    FUNC2 ("seafile-rpcserver",
                                     seafile_get_upload_rate,
                                     "seafile_get_upload_rate",
                                     FUNC8());

    FUNC2 ("seafile-rpcserver",
                                     seafile_get_download_rate,
                                     "seafile_get_download_rate",
                                     FUNC8());

    FUNC2 ("seafile-rpcserver",
                                     seafile_destroy_repo,
                                     "seafile_destroy_repo",
                                     FUNC4());

    FUNC2 ("seafile-rpcserver",
                                     seafile_set_repo_property,
                                     "seafile_set_repo_property",
                                     FUNC7());
    FUNC2 ("seafile-rpcserver",
                                     seafile_get_repo_property,
                                     "seafile_get_repo_property",
                                     FUNC19());

    FUNC2 ("seafile-rpcserver",
                                     seafile_update_repos_server_host,
                                     "seafile_update_repos_server_host",
                                     FUNC7());

    FUNC2 ("seafile-rpcserver",
                                     seafile_disable_auto_sync,
                                     "seafile_disable_auto_sync",
                                     FUNC8());

    FUNC2 ("seafile-rpcserver",
                                     seafile_enable_auto_sync,
                                     "seafile_enable_auto_sync",
                                     FUNC8());

    FUNC2 ("seafile-rpcserver",
                                     seafile_is_auto_sync_enabled,
                                     "seafile_is_auto_sync_enabled",
                                     FUNC8());

    FUNC2 ("seafile-rpcserver",
                                     seafile_gen_default_worktree,
                                     "gen_default_worktree",
                                     FUNC19());
    FUNC2 ("seafile-rpcserver",
                                     seafile_check_path_for_clone,
                                     "seafile_check_path_for_clone",
                                     FUNC4());

    /* clone means sync with existing folder, download means sync to a new folder. */
    FUNC2 ("seafile-rpcserver",
                                     seafile_clone,
                                     "seafile_clone",
        FUNC18());
    FUNC2 ("seafile-rpcserver",
                                     seafile_download,
                                     "seafile_download",
        FUNC18());

    FUNC2 ("seafile-rpcserver",
                                     seafile_cancel_clone_task,
                                     "seafile_cancel_clone_task",
                                     FUNC4());
    FUNC2 ("seafile-rpcserver",
                                     seafile_remove_clone_task,
                                     "seafile_remove_clone_task",
                                     FUNC4());
    FUNC2 ("seafile-rpcserver",
                                     seafile_get_clone_tasks,
                                     "seafile_get_clone_tasks",
                                     FUNC15());
    FUNC2 ("seafile-rpcserver",
                                     seafile_sync,
                                     "seafile_sync",
                                     FUNC6());
    FUNC2 ("seafile-rpcserver",
                                     seafile_get_repo_list,
                                     "seafile_get_repo_list",
                                     FUNC13());
    FUNC2 ("seafile-rpcserver",
                                     seafile_get_repo,
                                     "seafile_get_repo",
                                     FUNC11());

    FUNC2 ("seafile-rpcserver",
                                     seafile_get_repo_sync_task,
                                     "seafile_get_repo_sync_task",
                                     FUNC11());

    FUNC2 ("seafile-rpcserver",
                                     seafile_find_transfer_task,
                                     "seafile_find_transfer_task",
                                     FUNC11());

    FUNC2 ("seafile-rpcserver",
                                     seafile_get_path_sync_status,
                                     "seafile_get_path_sync_status",
                                     FUNC20());

    FUNC2 ("seafile-rpcserver",
                                     seafile_mark_file_locked,
                                     "seafile_mark_file_locked",
                                     FUNC6());

    FUNC2 ("seafile-rpcserver",
                                     seafile_mark_file_unlocked,
                                     "seafile_mark_file_unlocked",
                                     FUNC6());

    FUNC2 ("seafile-rpcserver",
                                     seafile_generate_magic_and_random_key,
                                     "seafile_generate_magic_and_random_key",
                                     FUNC10());

    FUNC2 ("seafile-rpcserver",
                                     seafile_get_server_property,
                                     "seafile_get_server_property",
                                     FUNC19());

    FUNC2 ("seafile-rpcserver",
                                     seafile_set_server_property,
                                     "seafile_set_server_property",
                                     FUNC7());

    FUNC2 ("seafile-rpcserver",
                                     seafile_get_file_sync_errors,
                                     "seafile_get_file_sync_errors",
                                     FUNC13());

    FUNC2 ("seafile-rpcserver",
                                     seafile_get_sync_notification,
                                     "seafile_get_sync_notification",
                                     FUNC9());

    FUNC2 ("seafile-rpcserver",
                                     seafile_shutdown,
                                     "seafile_shutdown",
                                     FUNC8());

    /* Need to run in a thread since diff may take long. */
    FUNC2 ("seafile-threaded-rpcserver",
                                     seafile_diff,
                                     "seafile_diff",
                                     FUNC14());
}