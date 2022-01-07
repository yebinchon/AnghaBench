
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct addrinfo {int ai_family; int ai_socktype; int ai_protocol; size_t ai_addrlen; int * ai_canonname; int * ai_addr; int * ai_next; scalar_t__ ai_flags; } ;


 int freeaddrinfo (struct addrinfo*) ;
 int * malloc (size_t) ;
 int memcpy (int *,struct sockaddr const*,size_t) ;
 int * strdup (char const*) ;

__attribute__((used)) static struct addrinfo *
makeaddrinfo (int af, int type, int proto,
              const struct sockaddr *addr, size_t addrlen,
              const char *canonname)
{
    struct addrinfo *res;

    res = (struct addrinfo *)malloc (sizeof (struct addrinfo));
    if (res != ((void*)0))
    {
        res->ai_flags = 0;
        res->ai_family = af;
        res->ai_socktype = type;
        res->ai_protocol = proto;
        res->ai_addrlen = addrlen;
        res->ai_addr = malloc (addrlen);
        res->ai_canonname = ((void*)0);
        res->ai_next = ((void*)0);

        if (res->ai_addr != ((void*)0))
        {
            memcpy (res->ai_addr, addr, addrlen);

            if (canonname != ((void*)0))
            {
                res->ai_canonname = strdup (canonname);
                if (res->ai_canonname != ((void*)0))
                    return res;
            }
            else
                return res;
        }
    }

    freeaddrinfo (res);
    return ((void*)0);
}
