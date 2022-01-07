
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int assert (int) ;
 scalar_t__ send_one_fd_iov_sa (int,int,int *,int ,struct sockaddr const*,int ,int) ;

int send_one_fd_sa(
                int transport_fd,
                int fd,
                const struct sockaddr *sa, socklen_t len,
                int flags) {

        assert(fd >= 0);

        return (int) send_one_fd_iov_sa(transport_fd, fd, ((void*)0), 0, sa, len, flags);
}
