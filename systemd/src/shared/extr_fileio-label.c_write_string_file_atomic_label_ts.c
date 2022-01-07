
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int S_IFREG ;
 int WRITE_STRING_FILE_ATOMIC ;
 int WRITE_STRING_FILE_CREATE ;
 int mac_selinux_create_file_clear () ;
 int mac_selinux_create_file_prepare (char const*,int ) ;
 int write_string_file_ts (char const*,char const*,int,struct timespec*) ;

int write_string_file_atomic_label_ts(const char *fn, const char *line, struct timespec *ts) {
        int r;

        r = mac_selinux_create_file_prepare(fn, S_IFREG);
        if (r < 0)
                return r;

        r = write_string_file_ts(fn, line, WRITE_STRING_FILE_CREATE|WRITE_STRING_FILE_ATOMIC, ts);

        mac_selinux_create_file_clear();

        return r;
}
