; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_seaf-daemon.c_register_rpc_service.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_seaf-daemon.c_register_rpc_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@register_marshals = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"seafile-rpcserver\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"seafile-threaded-rpcserver\00", align 1
@seafile_sync_error_id_to_str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"seafile_sync_error_id_to_str\00", align 1
@seafile_get_session_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"seafile_get_session_info\00", align 1
@seafile_get_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"seafile_get_config\00", align 1
@seafile_set_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"seafile_set_config\00", align 1
@seafile_get_config_int = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"seafile_get_config_int\00", align 1
@seafile_set_config_int = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"seafile_set_config_int\00", align 1
@seafile_set_upload_rate_limit = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"seafile_set_upload_rate_limit\00", align 1
@seafile_set_download_rate_limit = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"seafile_set_download_rate_limit\00", align 1
@seafile_unsync_repos_by_account = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"seafile_unsync_repos_by_account\00", align 1
@seafile_remove_repo_tokens_by_account = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"seafile_remove_repo_tokens_by_account\00", align 1
@seafile_set_repo_token = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"seafile_set_repo_token\00", align 1
@seafile_get_upload_rate = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"seafile_get_upload_rate\00", align 1
@seafile_get_download_rate = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"seafile_get_download_rate\00", align 1
@seafile_destroy_repo = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"seafile_destroy_repo\00", align 1
@seafile_set_repo_property = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"seafile_set_repo_property\00", align 1
@seafile_get_repo_property = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"seafile_get_repo_property\00", align 1
@seafile_update_repos_server_host = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"seafile_update_repos_server_host\00", align 1
@seafile_disable_auto_sync = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [26 x i8] c"seafile_disable_auto_sync\00", align 1
@seafile_enable_auto_sync = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [25 x i8] c"seafile_enable_auto_sync\00", align 1
@seafile_is_auto_sync_enabled = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"seafile_is_auto_sync_enabled\00", align 1
@seafile_gen_default_worktree = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"gen_default_worktree\00", align 1
@seafile_check_path_for_clone = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"seafile_check_path_for_clone\00", align 1
@seafile_clone = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"seafile_clone\00", align 1
@seafile_download = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [17 x i8] c"seafile_download\00", align 1
@seafile_cancel_clone_task = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [26 x i8] c"seafile_cancel_clone_task\00", align 1
@seafile_remove_clone_task = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [26 x i8] c"seafile_remove_clone_task\00", align 1
@seafile_get_clone_tasks = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [24 x i8] c"seafile_get_clone_tasks\00", align 1
@seafile_sync = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"seafile_sync\00", align 1
@seafile_get_repo_list = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [22 x i8] c"seafile_get_repo_list\00", align 1
@seafile_get_repo = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [17 x i8] c"seafile_get_repo\00", align 1
@seafile_get_repo_sync_task = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [27 x i8] c"seafile_get_repo_sync_task\00", align 1
@seafile_find_transfer_task = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [27 x i8] c"seafile_find_transfer_task\00", align 1
@seafile_get_path_sync_status = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [29 x i8] c"seafile_get_path_sync_status\00", align 1
@seafile_mark_file_locked = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [25 x i8] c"seafile_mark_file_locked\00", align 1
@seafile_mark_file_unlocked = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [27 x i8] c"seafile_mark_file_unlocked\00", align 1
@seafile_generate_magic_and_random_key = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [38 x i8] c"seafile_generate_magic_and_random_key\00", align 1
@seafile_get_server_property = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [28 x i8] c"seafile_get_server_property\00", align 1
@seafile_set_server_property = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [28 x i8] c"seafile_set_server_property\00", align 1
@seafile_get_file_sync_errors = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [29 x i8] c"seafile_get_file_sync_errors\00", align 1
@seafile_get_sync_notification = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [30 x i8] c"seafile_get_sync_notification\00", align 1
@seafile_shutdown = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [17 x i8] c"seafile_shutdown\00", align 1
@seafile_diff = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [13 x i8] c"seafile_diff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_rpc_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_rpc_service() #0 {
  %1 = load i32, i32* @register_marshals, align 4
  %2 = call i32 @searpc_server_init(i32 %1)
  %3 = call i32 @searpc_create_service(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @searpc_create_service(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @seafile_sync_error_id_to_str, align 4
  %6 = call i32 (...) @searpc_signature_string__int()
  %7 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @seafile_get_session_info, align 4
  %9 = call i32 (...) @searpc_signature_object__void()
  %10 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @seafile_get_config, align 4
  %12 = call i32 (...) @searpc_signature_string__string()
  %13 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @seafile_set_config, align 4
  %15 = call i32 (...) @searpc_signature_int__string_string()
  %16 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @seafile_get_config_int, align 4
  %18 = call i32 (...) @searpc_signature_int__string()
  %19 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @seafile_set_config_int, align 4
  %21 = call i32 (...) @searpc_signature_int__string_int()
  %22 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @seafile_set_upload_rate_limit, align 4
  %24 = call i32 (...) @searpc_signature_int__int()
  %25 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @seafile_set_download_rate_limit, align 4
  %27 = call i32 (...) @searpc_signature_int__int()
  %28 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @seafile_unsync_repos_by_account, align 4
  %30 = call i32 (...) @searpc_signature_int__string_string()
  %31 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @seafile_remove_repo_tokens_by_account, align 4
  %33 = call i32 (...) @searpc_signature_int__string_string()
  %34 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @seafile_set_repo_token, align 4
  %36 = call i32 (...) @searpc_signature_int__string_string()
  %37 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @seafile_get_upload_rate, align 4
  %39 = call i32 (...) @searpc_signature_int__void()
  %40 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @seafile_get_download_rate, align 4
  %42 = call i32 (...) @searpc_signature_int__void()
  %43 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @seafile_destroy_repo, align 4
  %45 = call i32 (...) @searpc_signature_int__string()
  %46 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @seafile_set_repo_property, align 4
  %48 = call i32 (...) @searpc_signature_int__string_string_string()
  %49 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @seafile_get_repo_property, align 4
  %51 = call i32 (...) @searpc_signature_string__string_string()
  %52 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @seafile_update_repos_server_host, align 4
  %54 = call i32 (...) @searpc_signature_int__string_string_string()
  %55 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @seafile_disable_auto_sync, align 4
  %57 = call i32 (...) @searpc_signature_int__void()
  %58 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @seafile_enable_auto_sync, align 4
  %60 = call i32 (...) @searpc_signature_int__void()
  %61 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @seafile_is_auto_sync_enabled, align 4
  %63 = call i32 (...) @searpc_signature_int__void()
  %64 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @seafile_gen_default_worktree, align 4
  %66 = call i32 (...) @searpc_signature_string__string_string()
  %67 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @seafile_check_path_for_clone, align 4
  %69 = call i32 (...) @searpc_signature_int__string()
  %70 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @seafile_clone, align 4
  %72 = call i32 (...) @searpc_signature_string__string_int_string_string_string_string_string_string_string_string_string_string_int_string()
  %73 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @seafile_download, align 4
  %75 = call i32 (...) @searpc_signature_string__string_int_string_string_string_string_string_string_string_string_string_string_int_string()
  %76 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @seafile_cancel_clone_task, align 4
  %78 = call i32 (...) @searpc_signature_int__string()
  %79 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @seafile_remove_clone_task, align 4
  %81 = call i32 (...) @searpc_signature_int__string()
  %82 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @seafile_get_clone_tasks, align 4
  %84 = call i32 (...) @searpc_signature_objlist__void()
  %85 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @seafile_sync, align 4
  %87 = call i32 (...) @searpc_signature_int__string_string()
  %88 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @seafile_get_repo_list, align 4
  %90 = call i32 (...) @searpc_signature_objlist__int_int()
  %91 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @seafile_get_repo, align 4
  %93 = call i32 (...) @searpc_signature_object__string()
  %94 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @seafile_get_repo_sync_task, align 4
  %96 = call i32 (...) @searpc_signature_object__string()
  %97 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @seafile_find_transfer_task, align 4
  %99 = call i32 (...) @searpc_signature_object__string()
  %100 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @seafile_get_path_sync_status, align 4
  %102 = call i32 (...) @searpc_signature_string__string_string_int()
  %103 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @seafile_mark_file_locked, align 4
  %105 = call i32 (...) @searpc_signature_int__string_string()
  %106 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @seafile_mark_file_unlocked, align 4
  %108 = call i32 (...) @searpc_signature_int__string_string()
  %109 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @seafile_generate_magic_and_random_key, align 4
  %111 = call i32 (...) @searpc_signature_object__int_string_string()
  %112 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @seafile_get_server_property, align 4
  %114 = call i32 (...) @searpc_signature_string__string_string()
  %115 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @seafile_set_server_property, align 4
  %117 = call i32 (...) @searpc_signature_int__string_string_string()
  %118 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @seafile_get_file_sync_errors, align 4
  %120 = call i32 (...) @searpc_signature_objlist__int_int()
  %121 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @seafile_get_sync_notification, align 4
  %123 = call i32 (...) @searpc_signature_json__void()
  %124 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @seafile_shutdown, align 4
  %126 = call i32 (...) @searpc_signature_int__void()
  %127 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @seafile_diff, align 4
  %129 = call i32 (...) @searpc_signature_objlist__string_string_string_int()
  %130 = call i32 @searpc_server_register_function(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i32 %129)
  ret void
}

declare dso_local i32 @searpc_server_init(i32) #1

declare dso_local i32 @searpc_create_service(i8*) #1

declare dso_local i32 @searpc_server_register_function(i8*, i32, i8*, i32) #1

declare dso_local i32 @searpc_signature_string__int(...) #1

declare dso_local i32 @searpc_signature_object__void(...) #1

declare dso_local i32 @searpc_signature_string__string(...) #1

declare dso_local i32 @searpc_signature_int__string_string(...) #1

declare dso_local i32 @searpc_signature_int__string(...) #1

declare dso_local i32 @searpc_signature_int__string_int(...) #1

declare dso_local i32 @searpc_signature_int__int(...) #1

declare dso_local i32 @searpc_signature_int__void(...) #1

declare dso_local i32 @searpc_signature_int__string_string_string(...) #1

declare dso_local i32 @searpc_signature_string__string_string(...) #1

declare dso_local i32 @searpc_signature_string__string_int_string_string_string_string_string_string_string_string_string_string_int_string(...) #1

declare dso_local i32 @searpc_signature_objlist__void(...) #1

declare dso_local i32 @searpc_signature_objlist__int_int(...) #1

declare dso_local i32 @searpc_signature_object__string(...) #1

declare dso_local i32 @searpc_signature_string__string_string_int(...) #1

declare dso_local i32 @searpc_signature_object__int_string_string(...) #1

declare dso_local i32 @searpc_signature_json__void(...) #1

declare dso_local i32 @searpc_signature_objlist__string_string_string_int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
