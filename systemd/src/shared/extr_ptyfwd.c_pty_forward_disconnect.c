
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_stdout; int saved_stdin; int saved_stdin_attr; int saved_stdout_attr; int event; void* sigwinch_event_source; void* master_event_source; void* stdout_event_source; void* stdin_event_source; } ;
typedef TYPE_1__ PTYForward ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int TCSANOW ;
 int fd_nonblock (int ,int) ;
 void* sd_event_source_unref (void*) ;
 int sd_event_unref (int ) ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) static void pty_forward_disconnect(PTYForward *f) {

        if (f) {
                f->stdin_event_source = sd_event_source_unref(f->stdin_event_source);
                f->stdout_event_source = sd_event_source_unref(f->stdout_event_source);

                f->master_event_source = sd_event_source_unref(f->master_event_source);
                f->sigwinch_event_source = sd_event_source_unref(f->sigwinch_event_source);
                f->event = sd_event_unref(f->event);

                if (f->saved_stdout)
                        tcsetattr(STDOUT_FILENO, TCSANOW, &f->saved_stdout_attr);
                if (f->saved_stdin)
                        tcsetattr(STDIN_FILENO, TCSANOW, &f->saved_stdin_attr);

                f->saved_stdout = f->saved_stdin = 0;
        }


        (void) fd_nonblock(STDIN_FILENO, 0);
        (void) fd_nonblock(STDOUT_FILENO, 0);
}
