
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int capeff; int pid; int cmdline; int exe; int comm; } ;
typedef TYPE_1__ ClientContext ;


 int SIZE_MAX ;
 int assert (TYPE_1__*) ;
 int free_and_replace (int ,char*) ;
 scalar_t__ get_process_capeff (int ,char**) ;
 scalar_t__ get_process_cmdline (int ,int ,int ,char**) ;
 scalar_t__ get_process_comm (int ,char**) ;
 scalar_t__ get_process_exe (int ,char**) ;
 TYPE_1__* pid_is_valid (int ) ;

__attribute__((used)) static void client_context_read_basic(ClientContext *c) {
        char *t;

        assert(c);
        assert(pid_is_valid(c->pid));

        if (get_process_comm(c->pid, &t) >= 0)
                free_and_replace(c->comm, t);

        if (get_process_exe(c->pid, &t) >= 0)
                free_and_replace(c->exe, t);

        if (get_process_cmdline(c->pid, SIZE_MAX, 0, &t) >= 0)
                free_and_replace(c->cmdline, t);

        if (get_process_capeff(c->pid, &t) >= 0)
                free_and_replace(c->capeff, t);
}
