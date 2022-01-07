
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecContext ;


 int ENOENT ;
 int TTY_GID ;
 int TTY_MODE ;
 int assert (int *) ;
 int chmod_and_chown (char const*,int ,int ,int ) ;
 scalar_t__ exec_context_may_touch_tty (int *) ;
 char* exec_context_tty_path (int *) ;
 int exec_context_tty_reset (int *,int *) ;
 int log_warning_errno (int,char*,char const*) ;

void exec_context_revert_tty(ExecContext *c) {
        int r;

        assert(c);


        exec_context_tty_reset(c, ((void*)0));





        if (exec_context_may_touch_tty(c)) {
                const char *path;

                path = exec_context_tty_path(c);
                if (path) {
                        r = chmod_and_chown(path, TTY_MODE, 0, TTY_GID);
                        if (r < 0 && r != -ENOENT)
                                log_warning_errno(r, "Failed to reset TTY ownership/access mode of %s, ignoring: %m", path);
                }
        }
}
