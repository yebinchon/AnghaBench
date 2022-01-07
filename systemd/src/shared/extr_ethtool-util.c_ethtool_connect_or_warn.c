
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LOG_DEBUG ;
 int LOG_WARNING ;
 int assert_return (int*,int ) ;
 int log_full_errno (int ,int,char*) ;
 int socket_ioctl_fd () ;

__attribute__((used)) static int ethtool_connect_or_warn(int *ret, bool warn) {
        int fd;

        assert_return(ret, -EINVAL);

        fd = socket_ioctl_fd();
        if (fd < 0)
                return log_full_errno(warn ? LOG_WARNING: LOG_DEBUG, fd,
                                       "ethtool: could not create control socket: %m");

        *ret = fd;

        return 0;
}
