
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ SyscallFilterSet ;


 unsigned int _SYSCALL_FILTER_SET_MAX ;
 scalar_t__ isempty (char const*) ;
 scalar_t__ streq (int ,char const*) ;
 TYPE_1__ const* syscall_filter_sets ;

const SyscallFilterSet *syscall_filter_set_find(const char *name) {
        unsigned i;

        if (isempty(name) || name[0] != '@')
                return ((void*)0);

        for (i = 0; i < _SYSCALL_FILTER_SET_MAX; i++)
                if (streq(syscall_filter_sets[i].name, name))
                        return syscall_filter_sets + i;

        return ((void*)0);
}
