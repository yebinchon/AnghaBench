#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int log_level_max; void* network_namespace_path; scalar_t__ stdin_data_size; void* stdin_data; scalar_t__ log_ratelimit_burst; scalar_t__ log_ratelimit_interval_usec; TYPE_1__* directories; void* address_families; void* syscall_archs; int /*<<< orphan*/  syscall_filter; void* smack_process_label; void* apparmor_profile; void* selinux_context; void* utmp_id; int /*<<< orphan*/  numa_policy; int /*<<< orphan*/  cpu_set; scalar_t__ n_temporary_filesystems; int /*<<< orphan*/ * temporary_filesystems; scalar_t__ n_bind_mounts; int /*<<< orphan*/ * bind_mounts; void* inaccessible_paths; void* read_write_paths; void* read_only_paths; void* pam_name; void* supplementary_groups; void* group; void* user; void* syslog_identifier; void* tty_path; void* root_image; void* root_directory; void* working_directory; void** stdio_file; void** stdio_fdname; int /*<<< orphan*/  rlimit; void* unset_environment; void* pass_environment; void* environment_files; void* environment; } ;
struct TYPE_6__ {void* paths; } ;
typedef  size_t ExecDirectoryType ;
typedef  TYPE_2__ ExecContext ;

/* Variables and functions */
 size_t _EXEC_DIRECTORY_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (void*) ; 
 void* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC11(ExecContext *c) {
        ExecDirectoryType i;
        size_t l;

        FUNC0(c);

        c->environment = FUNC9(c->environment);
        c->environment_files = FUNC9(c->environment_files);
        c->pass_environment = FUNC9(c->pass_environment);
        c->unset_environment = FUNC9(c->unset_environment);

        FUNC7(c->rlimit);

        for (l = 0; l < 3; l++) {
                c->stdio_fdname[l] = FUNC5(c->stdio_fdname[l]);
                c->stdio_file[l] = FUNC5(c->stdio_file[l]);
        }

        c->working_directory = FUNC5(c->working_directory);
        c->root_directory = FUNC5(c->root_directory);
        c->root_image = FUNC5(c->root_image);
        c->tty_path = FUNC5(c->tty_path);
        c->syslog_identifier = FUNC5(c->syslog_identifier);
        c->user = FUNC5(c->user);
        c->group = FUNC5(c->group);

        c->supplementary_groups = FUNC9(c->supplementary_groups);

        c->pam_name = FUNC5(c->pam_name);

        c->read_only_paths = FUNC9(c->read_only_paths);
        c->read_write_paths = FUNC9(c->read_write_paths);
        c->inaccessible_paths = FUNC9(c->inaccessible_paths);

        FUNC1(c->bind_mounts, c->n_bind_mounts);
        c->bind_mounts = NULL;
        c->n_bind_mounts = 0;
        FUNC10(c->temporary_filesystems, c->n_temporary_filesystems);
        c->temporary_filesystems = NULL;
        c->n_temporary_filesystems = 0;

        FUNC2(&c->cpu_set);
        FUNC6(&c->numa_policy);

        c->utmp_id = FUNC5(c->utmp_id);
        c->selinux_context = FUNC5(c->selinux_context);
        c->apparmor_profile = FUNC5(c->apparmor_profile);
        c->smack_process_label = FUNC5(c->smack_process_label);

        c->syscall_filter = FUNC4(c->syscall_filter);
        c->syscall_archs = FUNC8(c->syscall_archs);
        c->address_families = FUNC8(c->address_families);

        for (i = 0; i < _EXEC_DIRECTORY_TYPE_MAX; i++)
                c->directories[i].paths = FUNC9(c->directories[i].paths);

        c->log_level_max = -1;

        FUNC3(c);

        c->log_ratelimit_interval_usec = 0;
        c->log_ratelimit_burst = 0;

        c->stdin_data = FUNC5(c->stdin_data);
        c->stdin_data_size = 0;

        c->network_namespace_path = FUNC5(c->network_namespace_path);
}