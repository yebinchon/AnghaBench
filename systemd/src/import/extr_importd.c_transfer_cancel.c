
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n_canceled; int pid; } ;
typedef TYPE_1__ Transfer ;


 int SIGKILL ;
 int SIGTERM ;
 int assert (TYPE_1__*) ;
 int kill_and_sigcont (int ,int ) ;

__attribute__((used)) static int transfer_cancel(Transfer *t) {
        int r;

        assert(t);

        r = kill_and_sigcont(t->pid, t->n_canceled < 3 ? SIGTERM : SIGKILL);
        if (r < 0)
                return r;

        t->n_canceled++;
        return 0;
}
