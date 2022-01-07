
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int dummy; } ;


 int AF_UNIX ;
 int SNDBUF_SIZE ;
 int SOCK_CLOEXEC ;
 int SOL_SOCKET ;
 int SO_SNDTIMEO ;
 int USEC_PER_MSEC ;
 int USEC_PER_SEC ;
 int errno ;
 int fd_inc_sndbuf (int,int ) ;
 int fd_move_above_stdio (int) ;
 int getpid_cached () ;
 int setsockopt (int,int ,int ,struct timeval*,int) ;
 int socket (int ,int,int ) ;
 int timeval_store (struct timeval*,int) ;

__attribute__((used)) static int create_log_socket(int type) {
        struct timeval tv;
        int fd;

        fd = socket(AF_UNIX, type|SOCK_CLOEXEC, 0);
        if (fd < 0)
                return -errno;

        fd = fd_move_above_stdio(fd);
        (void) fd_inc_sndbuf(fd, SNDBUF_SIZE);



        if (getpid_cached() == 1)
                timeval_store(&tv, 10 * USEC_PER_MSEC);
        else
                timeval_store(&tv, 10 * USEC_PER_SEC);
        (void) setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));

        return fd;
}
