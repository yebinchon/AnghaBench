
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int u_long ;
struct hostent {int h_length; scalar_t__ h_addrtype; char* h_name; scalar_t__ h_addr; } ;
struct addrinfo {int ai_flags; scalar_t__ ai_family; int ai_socktype; int ai_protocol; struct addrinfo* ai_next; } ;


 scalar_t__ AF_INET ;
 int AI_CANONNAME ;
 int AI_NUMERICHOST ;
 int AI_PASSIVE ;
 int EAI_BADFLAGS ;
 int EAI_FAMILY ;
 int EAI_SERVICE ;
 int EAI_SOCKTYPE ;
 int EAI_SYSTEM ;
 int ENOMEM ;
 int INADDR_ANY ;
 int INADDR_LOOPBACK ;
 int INADDR_NONE ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;



 int _AI_MASK ;
 int errno ;
 int gai_error_from_herrno () ;
 struct hostent* gethostbyname (char const*) ;
 int htonl (int ) ;
 scalar_t__ htons (scalar_t__) ;
 int inet_addr (char const*) ;
 struct addrinfo* makeipv4info (int const,int,int ,scalar_t__,char const*) ;
 unsigned long strtoul (char const*,char**,int ) ;

int
getaddrinfo (const char *node, const char *service,
             const struct addrinfo *hints, struct addrinfo **res)
{
    struct addrinfo *info;
    u_long ip;
    u_short port;
    int protocol = 0, flags = 0;
    const char *name = ((void*)0);

    if (hints != ((void*)0))
    {
        flags = hints->ai_flags;

        if (flags & ~_AI_MASK)
            return EAI_BADFLAGS;

        if (hints->ai_family && (hints->ai_family != AF_INET))
            return EAI_FAMILY;


        switch (hints->ai_socktype)
        {
            case 128:
                protocol = IPPROTO_TCP;
                break;

            case 130:
                protocol = IPPROTO_UDP;
                break;


            case 129:

            case 0:
                break;

            default:
                return EAI_SOCKTYPE;
        }
        if (hints->ai_protocol && protocol
         && (protocol != hints->ai_protocol))
            return EAI_SERVICE;
    }

    *res = ((void*)0);


    if (node == ((void*)0))
    {
        if (flags & AI_PASSIVE)
            ip = htonl (INADDR_ANY);
        else
            ip = htonl (INADDR_LOOPBACK);
    }
    else
    if ((ip = inet_addr (node)) == INADDR_NONE)
    {
        struct hostent *entry = ((void*)0);


        if (!(flags & AI_NUMERICHOST))
            entry = gethostbyname (node);

        if (entry == ((void*)0))
            return gai_error_from_herrno ();

        if ((entry->h_length != 4) || (entry->h_addrtype != AF_INET))
            return EAI_FAMILY;

        ip = *((u_long *) entry->h_addr);
        if (flags & AI_CANONNAME)
            name = entry->h_name;
    }

    if ((flags & AI_CANONNAME) && (name == ((void*)0)))
        name = node;


    if (service == ((void*)0))
        port = 0;
    else
    {
        unsigned long d;
        char *end;

        d = strtoul (service, &end, 0);
        if (end[0] || (d > 65535u))
            return EAI_SERVICE;

        port = htons ((u_short)d);
    }


    if ((!protocol) || (protocol == IPPROTO_UDP))
    {
        info = makeipv4info (130, IPPROTO_UDP, ip, port, name);
        if (info == ((void*)0))
        {
            errno = ENOMEM;
            return EAI_SYSTEM;
        }
        if (flags & AI_PASSIVE)
            info->ai_flags |= AI_PASSIVE;
        *res = info;
    }
    if ((!protocol) || (protocol == IPPROTO_TCP))
    {
        info = makeipv4info (128, IPPROTO_TCP, ip, port, name);
        if (info == ((void*)0))
        {
            errno = ENOMEM;
            return EAI_SYSTEM;
        }
        info->ai_next = *res;
        if (flags & AI_PASSIVE)
            info->ai_flags |= AI_PASSIVE;
        *res = info;
    }

    return 0;
}
