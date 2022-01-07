
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int master_readable; } ;
typedef TYPE_1__ PTYForward ;


 int PTY_FORWARD_IGNORE_VHANGUP ;
 int SET_FLAG (int,int,int) ;
 int assert (TYPE_1__*) ;
 int ignore_vhangup (TYPE_1__*) ;
 int shovel (TYPE_1__*) ;

int pty_forward_set_ignore_vhangup(PTYForward *f, bool b) {
        int r;

        assert(f);

        if (!!(f->flags & PTY_FORWARD_IGNORE_VHANGUP) == b)
                return 0;

        SET_FLAG(f->flags, PTY_FORWARD_IGNORE_VHANGUP, b);

        if (!ignore_vhangup(f)) {




                f->master_readable = 1;
                r = shovel(f);
                if (r < 0)
                        return r;
        }

        return 0;
}
