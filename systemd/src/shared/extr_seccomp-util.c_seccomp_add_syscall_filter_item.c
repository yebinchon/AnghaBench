
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef char const scmp_filter_ctx ;
typedef int SyscallFilterSet ;


 int EDOM ;
 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int __NR_SCMP_ERROR ;
 int assert (char const*) ;
 int log_debug (char*,char const*) ;
 int log_debug_errno (int,char*,char const*,...) ;
 int seccomp_add_syscall_filter_set (char const*,int const*,int ,char**,int) ;
 int seccomp_rule_add_exact (char const*,int ,int,int ) ;
 int seccomp_syscall_resolve_name (char const*) ;
 scalar_t__ strv_contains (char**,char const*) ;
 int * syscall_filter_set_find (char const*) ;

int seccomp_add_syscall_filter_item(scmp_filter_ctx *seccomp, const char *name, uint32_t action, char **exclude, bool log_missing) {
        assert(seccomp);
        assert(name);

        if (strv_contains(exclude, name))
                return 0;

        if (name[0] == '@') {
                const SyscallFilterSet *other;

                other = syscall_filter_set_find(name);
                if (!other)
                        return log_debug_errno(SYNTHETIC_ERRNO(EINVAL),
                                               "Filter set %s is not known!",
                                               name);

                return seccomp_add_syscall_filter_set(seccomp, other, action, exclude, log_missing);

        } else {
                int id, r;

                id = seccomp_syscall_resolve_name(name);
                if (id == __NR_SCMP_ERROR) {
                        if (log_missing)
                                log_debug("System call %s is not known, ignoring.", name);
                        return 0;
                }

                r = seccomp_rule_add_exact(seccomp, action, id, 0);
                if (r < 0) {

                        bool ignore = r == -EDOM;

                        if (!ignore || log_missing)
                                log_debug_errno(r, "Failed to add rule for system call %s() / %d%s: %m",
                                                name, id, ignore ? ", ignoring" : "");
                        if (!ignore)
                                return r;
                }

                return 0;
        }
}
