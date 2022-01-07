
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RemoteServer ;


 int LOG_INFO ;
 int SOCK_CLOEXEC ;
 int SOCK_STREAM ;
 int journal_remote_add_raw_socket (int *,int) ;
 int make_socket_fd (int ,char const*,int ,int ) ;

__attribute__((used)) static int setup_raw_socket(RemoteServer *s, const char *address) {
        int fd;

        fd = make_socket_fd(LOG_INFO, address, SOCK_STREAM, SOCK_CLOEXEC);
        if (fd < 0)
                return fd;

        return journal_remote_add_raw_socket(s, fd);
}
