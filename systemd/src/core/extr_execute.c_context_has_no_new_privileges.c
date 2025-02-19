
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ protect_hostname; scalar_t__ lock_personality; int syscall_archs; scalar_t__ private_devices; scalar_t__ protect_kernel_logs; scalar_t__ protect_kernel_modules; scalar_t__ protect_kernel_tunables; scalar_t__ restrict_suid_sgid; scalar_t__ restrict_realtime; scalar_t__ memory_deny_write_execute; scalar_t__ no_new_privileges; } ;
typedef TYPE_1__ ExecContext ;


 int CAP_SYS_ADMIN ;
 int assert (TYPE_1__ const*) ;
 scalar_t__ context_has_address_families (TYPE_1__ const*) ;
 scalar_t__ context_has_syscall_filters (TYPE_1__ const*) ;
 scalar_t__ exec_context_restrict_namespaces_set (TYPE_1__ const*) ;
 scalar_t__ have_effective_cap (int ) ;
 int set_isempty (int ) ;

__attribute__((used)) static bool context_has_no_new_privileges(const ExecContext *c) {
        assert(c);

        if (c->no_new_privileges)
                return 1;

        if (have_effective_cap(CAP_SYS_ADMIN))
                return 0;


        return context_has_address_families(c) ||
                c->memory_deny_write_execute ||
                c->restrict_realtime ||
                c->restrict_suid_sgid ||
                exec_context_restrict_namespaces_set(c) ||
                c->protect_kernel_tunables ||
                c->protect_kernel_modules ||
                c->protect_kernel_logs ||
                c->private_devices ||
                context_has_syscall_filters(c) ||
                !set_isempty(c->syscall_archs) ||
                c->lock_personality ||
                c->protect_hostname;
}
