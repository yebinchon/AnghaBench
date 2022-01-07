
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; } ;




 int EACCES ;
 int EAFNOSUPPORT ;
 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_V6ONLY ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,unsigned int) ;
 int close (int) ;
 int errno ;
 int is_allowed_port (int ) ;
 int recv (int,struct sockaddr_storage*,int,int ) ;
 int send_err (int,int ) ;
 int send_fd (int,int) ;
 int setsockopt (int,int ,int ,int const*,int) ;
 int socket (int,int ,int ) ;

__attribute__((used)) static void rootprocess (int fd)
{
    union
    {
        struct sockaddr sa;
        struct sockaddr_storage ss;
        struct sockaddr_in sin;

        struct sockaddr_in6 sin6;

    } addr;

    while (recv (fd, &addr.ss, sizeof (addr.ss), 0) == sizeof (addr.ss))
    {
        unsigned len;
        int sock;
        int family;

        switch (addr.sa.sa_family)
        {
            case 129:
                if (!is_allowed_port (addr.sin.sin_port))
                {
                    if (send_err (fd, EACCES))
                        return;
                    continue;
                }
                len = sizeof (struct sockaddr_in);
                family = PF_INET;
                break;


            case 128:
                if (!is_allowed_port (addr.sin6.sin6_port))
                {
                    if (send_err (fd, EACCES))
                        return;
                    continue;
                }
                len = sizeof (struct sockaddr_in6);
                family = PF_INET6;
                break;


            default:
                if (send_err (fd, EAFNOSUPPORT))
                    return;
                continue;
        }

        sock = socket (family, SOCK_STREAM, IPPROTO_TCP);
        if (sock != -1)
        {
            const int val = 1;

            setsockopt (sock, SOL_SOCKET, SO_REUSEADDR, &val, sizeof (val));

            if (addr.sa.sa_family == 128)
                setsockopt (sock, IPPROTO_IPV6, IPV6_V6ONLY, &val, sizeof (val));

            if (bind (sock, &addr.sa, len) == 0)
            {
                send_fd (fd, sock);
                close (sock);
                continue;
            }
            close (sock);
        }
        send_err (fd, errno);
    }
}
