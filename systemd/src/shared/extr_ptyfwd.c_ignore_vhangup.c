
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int read_from_master; } ;
typedef TYPE_1__ PTYForward ;


 int PTY_FORWARD_IGNORE_INITIAL_VHANGUP ;
 int PTY_FORWARD_IGNORE_VHANGUP ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static bool ignore_vhangup(PTYForward *f) {
        assert(f);

        if (f->flags & PTY_FORWARD_IGNORE_VHANGUP)
                return 1;

        if ((f->flags & PTY_FORWARD_IGNORE_INITIAL_VHANGUP) && !f->read_from_master)
                return 1;

        return 0;
}
