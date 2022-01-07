
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int syscall_filter; scalar_t__ syscall_whitelist; } ;
typedef TYPE_1__ ExecContext ;


 int assert (TYPE_1__ const*) ;
 int hashmap_isempty (int ) ;

__attribute__((used)) static bool context_has_syscall_filters(const ExecContext *c) {
        assert(c);

        return c->syscall_whitelist ||
                !hashmap_isempty(c->syscall_filter);
}
