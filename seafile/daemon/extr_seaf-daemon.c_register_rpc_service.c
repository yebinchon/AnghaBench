
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_marshals ;
 int seafile_cancel_clone_task ;
 int seafile_check_path_for_clone ;
 int seafile_clone ;
 int seafile_destroy_repo ;
 int seafile_diff ;
 int seafile_disable_auto_sync ;
 int seafile_download ;
 int seafile_enable_auto_sync ;
 int seafile_find_transfer_task ;
 int seafile_gen_default_worktree ;
 int seafile_generate_magic_and_random_key ;
 int seafile_get_clone_tasks ;
 int seafile_get_config ;
 int seafile_get_config_int ;
 int seafile_get_download_rate ;
 int seafile_get_file_sync_errors ;
 int seafile_get_path_sync_status ;
 int seafile_get_repo ;
 int seafile_get_repo_list ;
 int seafile_get_repo_property ;
 int seafile_get_repo_sync_task ;
 int seafile_get_server_property ;
 int seafile_get_session_info ;
 int seafile_get_sync_notification ;
 int seafile_get_upload_rate ;
 int seafile_is_auto_sync_enabled ;
 int seafile_mark_file_locked ;
 int seafile_mark_file_unlocked ;
 int seafile_remove_clone_task ;
 int seafile_remove_repo_tokens_by_account ;
 int seafile_set_config ;
 int seafile_set_config_int ;
 int seafile_set_download_rate_limit ;
 int seafile_set_repo_property ;
 int seafile_set_repo_token ;
 int seafile_set_server_property ;
 int seafile_set_upload_rate_limit ;
 int seafile_shutdown ;
 int seafile_sync ;
 int seafile_sync_error_id_to_str ;
 int seafile_unsync_repos_by_account ;
 int seafile_update_repos_server_host ;
 int searpc_create_service (char*) ;
 int searpc_server_init (int ) ;
 int searpc_server_register_function (char*,int ,char*,int ) ;
 int searpc_signature_int__int () ;
 int searpc_signature_int__string () ;
 int searpc_signature_int__string_int () ;
 int searpc_signature_int__string_string () ;
 int searpc_signature_int__string_string_string () ;
 int searpc_signature_int__void () ;
 int searpc_signature_json__void () ;
 int searpc_signature_object__int_string_string () ;
 int searpc_signature_object__string () ;
 int searpc_signature_object__void () ;
 int searpc_signature_objlist__int_int () ;
 int searpc_signature_objlist__string_string_string_int () ;
 int searpc_signature_objlist__void () ;
 int searpc_signature_string__int () ;
 int searpc_signature_string__string () ;
 int searpc_signature_string__string_int_string_string_string_string_string_string_string_string_string_string_int_string () ;
 int searpc_signature_string__string_string () ;
 int searpc_signature_string__string_string_int () ;

__attribute__((used)) static void
register_rpc_service ()
{
    searpc_server_init (register_marshals);

    searpc_create_service ("seafile-rpcserver");
    searpc_create_service ("seafile-threaded-rpcserver");


    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_sync_error_id_to_str,
                                     "seafile_sync_error_id_to_str",
                                     searpc_signature_string__int());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_session_info,
                                     "seafile_get_session_info",
                                     searpc_signature_object__void());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_config,
                                     "seafile_get_config",
                                     searpc_signature_string__string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_set_config,
                                     "seafile_set_config",
                                     searpc_signature_int__string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_config_int,
                                     "seafile_get_config_int",
                                     searpc_signature_int__string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_set_config_int,
                                     "seafile_set_config_int",
                                     searpc_signature_int__string_int());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_set_upload_rate_limit,
                                     "seafile_set_upload_rate_limit",
                                     searpc_signature_int__int());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_set_download_rate_limit,
                                     "seafile_set_download_rate_limit",
                                     searpc_signature_int__int());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_unsync_repos_by_account,
                                     "seafile_unsync_repos_by_account",
                                     searpc_signature_int__string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_remove_repo_tokens_by_account,
                                     "seafile_remove_repo_tokens_by_account",
                                     searpc_signature_int__string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_set_repo_token,
                                     "seafile_set_repo_token",
                                     searpc_signature_int__string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_upload_rate,
                                     "seafile_get_upload_rate",
                                     searpc_signature_int__void());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_download_rate,
                                     "seafile_get_download_rate",
                                     searpc_signature_int__void());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_destroy_repo,
                                     "seafile_destroy_repo",
                                     searpc_signature_int__string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_set_repo_property,
                                     "seafile_set_repo_property",
                                     searpc_signature_int__string_string_string());
    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_repo_property,
                                     "seafile_get_repo_property",
                                     searpc_signature_string__string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_update_repos_server_host,
                                     "seafile_update_repos_server_host",
                                     searpc_signature_int__string_string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_disable_auto_sync,
                                     "seafile_disable_auto_sync",
                                     searpc_signature_int__void());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_enable_auto_sync,
                                     "seafile_enable_auto_sync",
                                     searpc_signature_int__void());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_is_auto_sync_enabled,
                                     "seafile_is_auto_sync_enabled",
                                     searpc_signature_int__void());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_gen_default_worktree,
                                     "gen_default_worktree",
                                     searpc_signature_string__string_string());
    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_check_path_for_clone,
                                     "seafile_check_path_for_clone",
                                     searpc_signature_int__string());


    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_clone,
                                     "seafile_clone",
        searpc_signature_string__string_int_string_string_string_string_string_string_string_string_string_string_int_string());
    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_download,
                                     "seafile_download",
        searpc_signature_string__string_int_string_string_string_string_string_string_string_string_string_string_int_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_cancel_clone_task,
                                     "seafile_cancel_clone_task",
                                     searpc_signature_int__string());
    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_remove_clone_task,
                                     "seafile_remove_clone_task",
                                     searpc_signature_int__string());
    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_clone_tasks,
                                     "seafile_get_clone_tasks",
                                     searpc_signature_objlist__void());
    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_sync,
                                     "seafile_sync",
                                     searpc_signature_int__string_string());
    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_repo_list,
                                     "seafile_get_repo_list",
                                     searpc_signature_objlist__int_int());
    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_repo,
                                     "seafile_get_repo",
                                     searpc_signature_object__string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_repo_sync_task,
                                     "seafile_get_repo_sync_task",
                                     searpc_signature_object__string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_find_transfer_task,
                                     "seafile_find_transfer_task",
                                     searpc_signature_object__string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_path_sync_status,
                                     "seafile_get_path_sync_status",
                                     searpc_signature_string__string_string_int());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_mark_file_locked,
                                     "seafile_mark_file_locked",
                                     searpc_signature_int__string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_mark_file_unlocked,
                                     "seafile_mark_file_unlocked",
                                     searpc_signature_int__string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_generate_magic_and_random_key,
                                     "seafile_generate_magic_and_random_key",
                                     searpc_signature_object__int_string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_server_property,
                                     "seafile_get_server_property",
                                     searpc_signature_string__string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_set_server_property,
                                     "seafile_set_server_property",
                                     searpc_signature_int__string_string_string());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_file_sync_errors,
                                     "seafile_get_file_sync_errors",
                                     searpc_signature_objlist__int_int());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_get_sync_notification,
                                     "seafile_get_sync_notification",
                                     searpc_signature_json__void());

    searpc_server_register_function ("seafile-rpcserver",
                                     seafile_shutdown,
                                     "seafile_shutdown",
                                     searpc_signature_int__void());


    searpc_server_register_function ("seafile-threaded-rpcserver",
                                     seafile_diff,
                                     "seafile_diff",
                                     searpc_signature_objlist__string_string_string_int());
}
