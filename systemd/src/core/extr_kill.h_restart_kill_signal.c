
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ restart_kill_signal; int kill_signal; } ;
typedef TYPE_1__ KillContext ;



__attribute__((used)) static inline int restart_kill_signal(const KillContext *c) {
        if (c->restart_kill_signal != 0)
                return c->restart_kill_signal;
        return c->kill_signal;
}
