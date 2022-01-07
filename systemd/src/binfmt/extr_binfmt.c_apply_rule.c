
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_STRING_FILE_DISABLE_BUFFER ;
 int delete_rule (char const*) ;
 int log_error_errno (int,char*) ;
 int write_string_file (char*,char const*,int ) ;

__attribute__((used)) static int apply_rule(const char *rule) {
        int r;

        (void) delete_rule(rule);

        r = write_string_file("/proc/sys/fs/binfmt_misc/register", rule, WRITE_STRING_FILE_DISABLE_BUFFER);
        if (r < 0)
                return log_error_errno(r, "Failed to add binary format: %m");

        return 0;
}
