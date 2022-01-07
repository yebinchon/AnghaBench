
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int class; int leader; } ;
typedef TYPE_1__ Machine ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int assert (TYPE_1__*) ;
 int openpt_allocate (int,char**) ;
 int openpt_allocate_in_namespace (int ,int,char**) ;

int machine_openpt(Machine *m, int flags, char **ret_slave) {
        assert(m);

        switch (m->class) {

        case 128:

                return openpt_allocate(flags, ret_slave);

        case 129:
                if (m->leader <= 0)
                        return -EINVAL;

                return openpt_allocate_in_namespace(m->leader, flags, ret_slave);

        default:
                return -EOPNOTSUPP;
        }
}
