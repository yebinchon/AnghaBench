
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct iovec_wrapper {int dummy; } ;
typedef int pid_t ;
struct TYPE_4__ {int pid; } ;
typedef TYPE_1__ Context ;


 int SIZE_MAX ;
 int UID_FMT ;
 int asprintf (char**,int ,int ) ;
 scalar_t__ cg_pid_get_path_shifted (int ,int *,char**) ;
 scalar_t__ cg_pid_get_unit (int ,char**) ;
 scalar_t__ cg_pid_get_user_unit (int ,char**) ;
 scalar_t__ compose_open_fds (int ,char**) ;
 scalar_t__ get_process_cmdline (int ,int ,int ,char**) ;
 int get_process_comm (int ,char**) ;
 scalar_t__ get_process_container_parent_cmdline (int ,char**) ;
 scalar_t__ get_process_cwd (int ,char**) ;
 scalar_t__ get_process_environ (int ,char**) ;
 int get_process_exe (int ,char**) ;
 scalar_t__ get_process_root (int ,char**) ;
 int iovw_put_string_field_free (struct iovec_wrapper*,char*,char*) ;
 int log_error_errno (int,char*) ;
 int log_warning_errno (int,char*) ;
 char* procfs_file_alloca (int ,char*) ;
 scalar_t__ read_full_file (char const*,char**,int *) ;
 int save_context (TYPE_1__*,struct iovec_wrapper*) ;
 scalar_t__ sd_pid_get_owner_uid (int ,int *) ;
 scalar_t__ sd_pid_get_session (int ,char**) ;
 scalar_t__ sd_pid_get_slice (int ,char**) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int gather_pid_metadata(struct iovec_wrapper *iovw, Context *context) {
        uid_t owner_uid;
        pid_t pid;
        char *t;
        const char *p;
        int r;




        pid = context->pid;


        r = get_process_comm(pid, &t);
        if (r < 0)
                return log_error_errno(r, "Failed to get COMM: %m");

        r = iovw_put_string_field_free(iovw, "COREDUMP_COMM=", t);
        if (r < 0)
                return r;


        r = get_process_exe(pid, &t);
        if (r >= 0)
                r = iovw_put_string_field_free(iovw, "COREDUMP_EXE=", t);
        if (r < 0)
                log_warning_errno(r, "Failed to get EXE, ignoring: %m");

        if (cg_pid_get_unit(pid, &t) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_UNIT=", t);


        if (cg_pid_get_user_unit(pid, &t) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_USER_UNIT=", t);

        if (sd_pid_get_session(pid, &t) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_SESSION=", t);

        if (sd_pid_get_owner_uid(pid, &owner_uid) >= 0) {
                r = asprintf(&t, UID_FMT, owner_uid);
                if (r > 0)
                        (void) iovw_put_string_field_free(iovw, "COREDUMP_OWNER_UID=", t);
        }

        if (sd_pid_get_slice(pid, &t) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_SLICE=", t);

        if (get_process_cmdline(pid, SIZE_MAX, 0, &t) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_CMDLINE=", t);

        if (cg_pid_get_path_shifted(pid, ((void*)0), &t) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_CGROUP=", t);

        if (compose_open_fds(pid, &t) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_OPEN_FDS=", t);

        p = procfs_file_alloca(pid, "status");
        if (read_full_file(p, &t, ((void*)0)) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_PROC_STATUS=", t);

        p = procfs_file_alloca(pid, "maps");
        if (read_full_file(p, &t, ((void*)0)) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_PROC_MAPS=", t);

        p = procfs_file_alloca(pid, "limits");
        if (read_full_file(p, &t, ((void*)0)) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_PROC_LIMITS=", t);

        p = procfs_file_alloca(pid, "cgroup");
        if (read_full_file(p, &t, ((void*)0)) >=0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_PROC_CGROUP=", t);

        p = procfs_file_alloca(pid, "mountinfo");
        if (read_full_file(p, &t, ((void*)0)) >=0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_PROC_MOUNTINFO=", t);

        if (get_process_cwd(pid, &t) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_CWD=", t);

        if (get_process_root(pid, &t) >= 0) {
                bool proc_self_root_is_slash;

                proc_self_root_is_slash = strcmp(t, "/") == 0;

                (void) iovw_put_string_field_free(iovw, "COREDUMP_ROOT=", t);



                if (proc_self_root_is_slash && get_process_container_parent_cmdline(pid, &t) > 0)
                        (void) iovw_put_string_field_free(iovw, "COREDUMP_CONTAINER_CMDLINE=", t);
        }

        if (get_process_environ(pid, &t) >= 0)
                (void) iovw_put_string_field_free(iovw, "COREDUMP_ENVIRON=", t);


        return save_context(context, iovw);
}
