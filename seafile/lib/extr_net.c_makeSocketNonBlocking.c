
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ evutil_socket_t ;


 int EVUTIL_SOCKET_ERROR () ;
 int ccnet_warning (char*,int ) ;
 int evutil_closesocket (scalar_t__) ;
 scalar_t__ evutil_make_socket_nonblocking (scalar_t__) ;
 int evutil_socket_error_to_string (int ) ;

__attribute__((used)) static evutil_socket_t
makeSocketNonBlocking (evutil_socket_t fd)
{
    if (fd >= 0)
    {
        if (evutil_make_socket_nonblocking(fd))
        {
            ccnet_warning ("Couldn't make socket nonblock: %s",
                           evutil_socket_error_to_string(EVUTIL_SOCKET_ERROR()));
            evutil_closesocket(fd);
            fd = -1;
        }
    }
    return fd;
}
