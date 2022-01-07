
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct addrinfo {scalar_t__ ai_socktype; int ai_protocol; int ai_flags; scalar_t__ ai_family; int ai_addrlen; int ai_addr; struct addrinfo* ai_next; } ;


 int AI_IDN ;
 int AI_NUMERICSERV ;
 int AI_PASSIVE ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ connect (int,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int msg_Dbg (int *,char*,char const*,unsigned int,char const*,unsigned int) ;
 int msg_Err (int *,char*,char const*,unsigned int,int ) ;
 int net_Close (int) ;
 int net_ListenSingle (int *,char const*,unsigned int,int) ;
 int net_SetupDgramSocket (int *,int,struct addrinfo*) ;
 scalar_t__ net_SockAddrIsMulticast (int ,int ) ;
 int net_Socket (int *,scalar_t__,scalar_t__,int) ;
 scalar_t__ net_SourceSubscribe (int *,int,int ,int ,int ,int ) ;
 int net_errno ;
 int vlc_getaddrinfo (char const*,unsigned int,struct addrinfo*,struct addrinfo**) ;
 int vlc_strerror_c (int ) ;

int net_OpenDgram( vlc_object_t *obj, const char *psz_bind, unsigned i_bind,
                   const char *psz_server, unsigned i_server, int protocol )
{
    if ((psz_server == ((void*)0)) || (psz_server[0] == '\0'))
        return net_ListenSingle (obj, psz_bind, i_bind, protocol);

    msg_Dbg (obj, "net: connecting to [%s]:%u from [%s]:%u",
             psz_server, i_server, psz_bind, i_bind);

    struct addrinfo hints = {
        .ai_socktype = SOCK_DGRAM,
        .ai_protocol = protocol,
        .ai_flags = AI_NUMERICSERV | AI_IDN,
    }, *loc, *rem;

    int val = vlc_getaddrinfo (psz_server, i_server, &hints, &rem);
    if (val)
    {
        msg_Err (obj, "cannot resolve %s port %u : %s", psz_server, i_server,
                 gai_strerror (val));
        return -1;
    }

    hints.ai_flags |= AI_PASSIVE;
    val = vlc_getaddrinfo (psz_bind, i_bind, &hints, &loc);
    if (val)
    {
        msg_Err (obj, "cannot resolve %s port %u : %s", psz_bind, i_bind,
                 gai_strerror (val));
        freeaddrinfo (rem);
        return -1;
    }

    val = -1;
    for (struct addrinfo *ptr = loc; ptr != ((void*)0); ptr = ptr->ai_next)
    {
        int fd = net_Socket (obj, ptr->ai_family, ptr->ai_socktype,
                             ptr->ai_protocol);
        if (fd == -1)
            continue;

        fd = net_SetupDgramSocket( obj, fd, ptr );
        if( fd == -1 )
            continue;

        for (struct addrinfo *ptr2 = rem; ptr2 != ((void*)0); ptr2 = ptr2->ai_next)
        {
            if ((ptr2->ai_family != ptr->ai_family)
             || (ptr2->ai_socktype != ptr->ai_socktype)
             || (ptr2->ai_protocol != ptr->ai_protocol))
                continue;

            if (net_SockAddrIsMulticast (ptr->ai_addr, ptr->ai_addrlen)
              ? net_SourceSubscribe (obj, fd,
                                     ptr2->ai_addr, ptr2->ai_addrlen,
                                     ptr->ai_addr, ptr->ai_addrlen)
              : connect (fd, ptr2->ai_addr, ptr2->ai_addrlen))
            {
                msg_Err (obj, "cannot connect to %s port %u: %s",
                         psz_server, i_server, vlc_strerror_c(net_errno));
                continue;
            }
            val = fd;
            break;
        }

        if (val != -1)
            break;

        net_Close (fd);
    }

    freeaddrinfo (rem);
    freeaddrinfo (loc);
    return val;
}
