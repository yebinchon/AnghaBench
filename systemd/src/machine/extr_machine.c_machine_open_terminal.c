
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
 int open_terminal (char const*,int) ;
 int open_terminal_in_namespace (int ,char const*,int) ;

int machine_open_terminal(Machine *m, const char *path, int mode) {
        assert(m);

        switch (m->class) {

        case 128:
                return open_terminal(path, mode);

        case 129:
                if (m->leader <= 0)
                        return -EINVAL;

                return open_terminal_in_namespace(m->leader, path, mode);

        default:
                return -EOPNOTSUPP;
        }
}
