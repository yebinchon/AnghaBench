
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
typedef int ssize_t ;


 int vlc_assert_unreachable () ;

ssize_t vlc_writev(int fd, const struct iovec *iov, int count)
{
    (void) fd; (void) iov; (void) count;
    vlc_assert_unreachable();
}
