
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ tty_vt_disallocate; scalar_t__ tty_reset; scalar_t__ tty_vhangup; } ;
struct TYPE_7__ {scalar_t__ stdin_fd; } ;
typedef TYPE_1__ ExecParameters ;
typedef TYPE_2__ ExecContext ;


 int assert (TYPE_2__ const*) ;
 char* exec_context_tty_path (TYPE_2__ const*) ;
 int reset_terminal (char const*) ;
 int reset_terminal_fd (scalar_t__,int) ;
 int terminal_vhangup (char const*) ;
 int terminal_vhangup_fd (scalar_t__) ;
 int vt_disallocate (char const*) ;

__attribute__((used)) static void exec_context_tty_reset(const ExecContext *context, const ExecParameters *p) {
        const char *path;

        assert(context);

        path = exec_context_tty_path(context);

        if (context->tty_vhangup) {
                if (p && p->stdin_fd >= 0)
                        (void) terminal_vhangup_fd(p->stdin_fd);
                else if (path)
                        (void) terminal_vhangup(path);
        }

        if (context->tty_reset) {
                if (p && p->stdin_fd >= 0)
                        (void) reset_terminal_fd(p->stdin_fd, 1);
                else if (path)
                        (void) reset_terminal(path);
        }

        if (context->tty_vt_disallocate && path)
                (void) vt_disallocate(path);
}
