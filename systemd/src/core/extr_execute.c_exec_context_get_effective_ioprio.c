
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ioprio; scalar_t__ ioprio_set; } ;
typedef TYPE_1__ ExecContext ;


 int IOPRIO_CLASS_BE ;
 int IOPRIO_PRIO_VALUE (int ,int) ;
 int IOPRIO_WHO_PROCESS ;
 int assert (TYPE_1__ const*) ;
 int ioprio_get (int ,int ) ;

int exec_context_get_effective_ioprio(const ExecContext *c) {
        int p;

        assert(c);

        if (c->ioprio_set)
                return c->ioprio;

        p = ioprio_get(IOPRIO_WHO_PROCESS, 0);
        if (p < 0)
                return IOPRIO_PRIO_VALUE(IOPRIO_CLASS_BE, 4);

        return p;
}
