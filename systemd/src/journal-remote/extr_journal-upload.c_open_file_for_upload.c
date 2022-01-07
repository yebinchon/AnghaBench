
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int input; int input_event; int events; } ;
typedef TYPE_1__ Uploader ;


 int EPERM ;
 int EPOLLIN ;
 int O_CLOEXEC ;
 int O_NOCTTY ;
 int O_RDONLY ;
 int STDIN_FILENO ;
 scalar_t__ arg_follow ;
 int dispatch_fd_input ;
 int errno ;
 int fd_input_callback ;
 int log_error_errno (int,char*,...) ;
 int open (char const*,int) ;
 int sd_event_add_io (int ,int *,int,int ,int ,TYPE_1__*) ;
 int start_upload (TYPE_1__*,int ,TYPE_1__*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int open_file_for_upload(Uploader *u, const char *filename) {
        int fd, r = 0;

        if (streq(filename, "-"))
                fd = STDIN_FILENO;
        else {
                fd = open(filename, O_RDONLY|O_CLOEXEC|O_NOCTTY);
                if (fd < 0)
                        return log_error_errno(errno, "Failed to open %s: %m", filename);
        }

        u->input = fd;

        if (arg_follow) {
                r = sd_event_add_io(u->events, &u->input_event,
                                    fd, EPOLLIN, dispatch_fd_input, u);
                if (r < 0) {
                        if (r != -EPERM || arg_follow > 0)
                                return log_error_errno(r, "Failed to register input event: %m");


                        r = start_upload(u, fd_input_callback, u);
                }
        }

        return r;
}
