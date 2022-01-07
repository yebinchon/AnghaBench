
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ out_buffer_full; int master; scalar_t__ master_readable; } ;
typedef TYPE_1__ PTYForward ;


 int TIOCINQ ;
 int TIOCOUTQ ;
 int assert (TYPE_1__*) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int log_debug_errno (int ,char*) ;

__attribute__((used)) static bool drained(PTYForward *f) {
        int q = 0;

        assert(f);

        if (f->out_buffer_full > 0)
                return 0;

        if (f->master_readable)
                return 0;

        if (ioctl(f->master, TIOCINQ, &q) < 0)
                log_debug_errno(errno, "TIOCINQ failed on master: %m");
        else if (q > 0)
                return 0;

        if (ioctl(f->master, TIOCOUTQ, &q) < 0)
                log_debug_errno(errno, "TIOCOUTQ failed on master: %m");
        else if (q > 0)
                return 0;

        return 1;
}
