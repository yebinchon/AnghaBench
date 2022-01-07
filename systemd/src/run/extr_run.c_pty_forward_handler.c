
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; } ;
typedef TYPE_1__ RunContext ;
typedef int PTYForward ;


 int EXIT_FAILURE ;
 int assert (int *) ;
 int log_error_errno (int,char*) ;
 int run_context_check_done (TYPE_1__*) ;
 int sd_event_exit (int ,int ) ;

__attribute__((used)) static int pty_forward_handler(PTYForward *f, int rcode, void *userdata) {
        RunContext *c = userdata;

        assert(f);

        if (rcode < 0) {
                sd_event_exit(c->event, EXIT_FAILURE);
                return log_error_errno(rcode, "Error on PTY forwarding logic: %m");
        }

        run_context_check_done(c);
        return 0;
}
