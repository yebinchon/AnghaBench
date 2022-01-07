
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RemoteServer ;


 int LOG_DEBUG ;
 int SOCK_CLOEXEC ;
 int SOCK_STREAM ;
 int make_socket_fd (int ,char const*,int ,int ) ;
 int setup_microhttpd_server (int *,int,char const*,char const*,char const*) ;

__attribute__((used)) static int setup_microhttpd_socket(RemoteServer *s,
                                   const char *address,
                                   const char *key,
                                   const char *cert,
                                   const char *trust) {
        int fd;

        fd = make_socket_fd(LOG_DEBUG, address, SOCK_STREAM, SOCK_CLOEXEC);
        if (fd < 0)
                return fd;

        return setup_microhttpd_server(s, fd, key, cert, trust);
}
