
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ log_level_max; } ;
typedef TYPE_1__ ClientContext ;


 scalar_t__ LOG_PRI (int) ;

__attribute__((used)) static inline bool client_context_test_priority(const ClientContext *c, int priority) {
        if (!c)
                return 1;

        if (c->log_level_max < 0)
                return 1;

        return LOG_PRI(priority) <= c->log_level_max;
}
