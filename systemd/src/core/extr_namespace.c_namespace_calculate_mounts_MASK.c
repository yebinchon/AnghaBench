#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t private_dev; scalar_t__ protect_hostname; scalar_t__ protect_control_groups; scalar_t__ protect_kernel_logs; scalar_t__ protect_kernel_modules; scalar_t__ protect_kernel_tunables; } ;
typedef  scalar_t__ ProtectSystem ;
typedef  scalar_t__ ProtectHome ;
typedef  TYPE_1__ NamespaceInfo ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PROTECT_HOME_READ_ONLY ; 
 scalar_t__ PROTECT_HOME_TMPFS ; 
 scalar_t__ PROTECT_HOME_YES ; 
 scalar_t__ PROTECT_SYSTEM_FULL ; 
 scalar_t__ PROTECT_SYSTEM_STRICT ; 
 scalar_t__ PROTECT_SYSTEM_YES ; 
 int /*<<< orphan*/  apivfs_table ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  protect_home_read_only_table ; 
 int /*<<< orphan*/  protect_home_tmpfs_table ; 
 int /*<<< orphan*/  protect_home_yes_table ; 
 int /*<<< orphan*/  protect_kernel_logs_table ; 
 int /*<<< orphan*/  protect_kernel_modules_table ; 
 int /*<<< orphan*/  protect_kernel_tunables_table ; 
 int /*<<< orphan*/  protect_system_full_table ; 
 int /*<<< orphan*/  protect_system_strict_table ; 
 int /*<<< orphan*/  protect_system_yes_table ; 
 size_t FUNC2 (char**) ; 

__attribute__((used)) static size_t FUNC3(
                const NamespaceInfo *ns_info,
                char** read_write_paths,
                char** read_only_paths,
                char** inaccessible_paths,
                char** empty_directories,
                size_t n_bind_mounts,
                size_t n_temporary_filesystems,
                const char* tmp_dir,
                const char* var_tmp_dir,
                ProtectHome protect_home,
                ProtectSystem protect_system) {

        size_t protect_home_cnt;
        size_t protect_system_cnt =
                (protect_system == PROTECT_SYSTEM_STRICT ?
                 FUNC0(protect_system_strict_table) :
                 ((protect_system == PROTECT_SYSTEM_FULL) ?
                  FUNC0(protect_system_full_table) :
                  ((protect_system == PROTECT_SYSTEM_YES) ?
                   FUNC0(protect_system_yes_table) : 0)));

        protect_home_cnt =
                (protect_home == PROTECT_HOME_YES ?
                 FUNC0(protect_home_yes_table) :
                 ((protect_home == PROTECT_HOME_READ_ONLY) ?
                  FUNC0(protect_home_read_only_table) :
                  ((protect_home == PROTECT_HOME_TMPFS) ?
                   FUNC0(protect_home_tmpfs_table) : 0)));

        return !!tmp_dir + !!var_tmp_dir +
                FUNC2(read_write_paths) +
                FUNC2(read_only_paths) +
                FUNC2(inaccessible_paths) +
                FUNC2(empty_directories) +
                n_bind_mounts +
                n_temporary_filesystems +
                ns_info->private_dev +
                (ns_info->protect_kernel_tunables ? FUNC0(protect_kernel_tunables_table) : 0) +
                (ns_info->protect_kernel_modules ? FUNC0(protect_kernel_modules_table) : 0) +
                (ns_info->protect_kernel_logs ? FUNC0(protect_kernel_logs_table) : 0) +
                (ns_info->protect_control_groups ? 1 : 0) +
                protect_home_cnt + protect_system_cnt +
                (ns_info->protect_hostname ? 2 : 0) +
                (FUNC1(ns_info) ? FUNC0(apivfs_table) : 0);
}