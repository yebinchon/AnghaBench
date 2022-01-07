
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int F_OK ;
 scalar_t__ access (char const*,int ) ;
 int assert (char const*) ;
 scalar_t__ errno ;
 int log_debug_errno (scalar_t__,char*,char const*) ;

__attribute__((used)) static int have_resolv_conf(const char *path) {
        assert(path);

        if (access(path, F_OK) < 0) {
                if (errno == ENOENT)
                        return 0;

                return log_debug_errno(errno, "Failed to determine whether '%s' is available: %m", path);
        }

        return 1;
}
