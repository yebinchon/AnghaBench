
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sockaddr_union {int sa; int un; } ;


 int MSG_NOSIGNAL ;
 int assert (void const*) ;
 int errno ;
 int log_error_errno (int,char*,...) ;
 scalar_t__ sendto (int,void const*,size_t,int ,int *,int) ;
 int sockaddr_un_set_path (int *,char const*) ;

__attribute__((used)) static int send_on_socket(int fd, const char *socket_name, const void *packet, size_t size) {
        union sockaddr_union sa = {};
        int salen;

        assert(fd >= 0);
        assert(socket_name);
        assert(packet);

        salen = sockaddr_un_set_path(&sa.un, socket_name);
        if (salen < 0)
                return log_error_errno(salen, "Specified socket path for AF_UNIX socket invalid, refusing: %s", socket_name);

        if (sendto(fd, packet, size, MSG_NOSIGNAL, &sa.sa, salen) < 0)
                return log_error_errno(errno, "Failed to send: %m");

        return 0;
}
