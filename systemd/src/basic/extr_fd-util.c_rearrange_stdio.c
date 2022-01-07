
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_DUPFD_CLOEXEC ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int assert (int) ;
 scalar_t__ dup2 (int,int) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int fd_cloexec (int,int) ;
 int open (char*,int) ;
 int safe_close (int) ;
 int safe_close_above_stdio (int) ;

int rearrange_stdio(int original_input_fd, int original_output_fd, int original_error_fd) {

        int fd[3] = {
                original_input_fd,
                original_output_fd,
                original_error_fd
        };

        int r, i,
                null_fd = -1,
                copy_fd[3] = { -1, -1, -1 };
        bool null_readable, null_writable;
        null_readable = original_input_fd < 0;
        null_writable = original_output_fd < 0 || original_error_fd < 0;


        if (null_readable || null_writable) {


                null_fd = open("/dev/null", (null_readable && null_writable ? O_RDWR :
                                             null_readable ? O_RDONLY : O_WRONLY) | O_CLOEXEC);
                if (null_fd < 0) {
                        r = -errno;
                        goto finish;
                }


                if (null_fd < 3) {
                        int copy;

                        copy = fcntl(null_fd, F_DUPFD_CLOEXEC, 3);
                        if (copy < 0) {
                                r = -errno;
                                goto finish;
                        }

                        safe_close(null_fd);
                        null_fd = copy;
                }
        }


        for (i = 0; i < 3; i++) {

                if (fd[i] < 0)
                        fd[i] = null_fd;
                else if (fd[i] != i && fd[i] < 3) {

                        copy_fd[i] = fcntl(fd[i], F_DUPFD_CLOEXEC, 3);
                        if (copy_fd[i] < 0) {
                                r = -errno;
                                goto finish;
                        }

                        fd[i] = copy_fd[i];
                }
        }




        for (i = 0; i < 3; i++) {

                if (fd[i] == i) {


                        r = fd_cloexec(i, 0);
                        if (r < 0)
                                goto finish;

                } else {
                        assert(fd[i] > 2);

                        if (dup2(fd[i], i) < 0) {
                                r = -errno;
                                goto finish;
                        }
                }
        }

        r = 0;

finish:


        safe_close_above_stdio(original_input_fd);
        if (original_output_fd != original_input_fd)
                safe_close_above_stdio(original_output_fd);
        if (original_error_fd != original_input_fd && original_error_fd != original_output_fd)
                safe_close_above_stdio(original_error_fd);


        for (i = 0; i < 3; i++)
                safe_close(copy_fd[i]);


        safe_close_above_stdio(null_fd);

        return r;
}
