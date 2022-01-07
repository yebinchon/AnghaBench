
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_STRING_FILE_DISABLE_BUFFER ;
 int arg_early_core_pattern ;
 int getpid_cached () ;
 int log_warning_errno (int,char*,int ) ;
 int write_string_file (char*,int ,int ) ;

__attribute__((used)) static void initialize_core_pattern(bool skip_setup) {
        int r;

        if (skip_setup || !arg_early_core_pattern)
                return;

        if (getpid_cached() != 1)
                return;

        r = write_string_file("/proc/sys/kernel/core_pattern", arg_early_core_pattern, WRITE_STRING_FILE_DISABLE_BUFFER);
        if (r < 0)
                log_warning_errno(r, "Failed to write '%s' to /proc/sys/kernel/core_pattern, ignoring: %m", arg_early_core_pattern);
}
