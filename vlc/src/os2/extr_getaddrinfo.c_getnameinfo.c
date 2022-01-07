
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef scalar_t__ socklen_t ;


 scalar_t__ AF_INET ;
 int EAI_BADFLAGS ;
 int EAI_FAMILY ;
 int EAI_NONAME ;
 int EAI_OVERFLOW ;
 int NI_NAMEREQD ;
 int NI_NUMERICHOST ;
 int _NI_MASK ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 int snprintf (char*,int,char*,unsigned int,...) ;

int
getnameinfo (const struct sockaddr *sa, socklen_t salen,
                 char *host, int hostlen, char *serv, int servlen, int flags)
{
    if (((size_t)salen < sizeof (struct sockaddr_in))
     || (sa->sa_family != AF_INET))
        return EAI_FAMILY;
    else if (flags & (~_NI_MASK))
        return EAI_BADFLAGS;
    else
    {
        const struct sockaddr_in *addr;

        addr = (const struct sockaddr_in *)sa;

        if (host != ((void*)0))
        {

            if (!(flags & NI_NUMERICHOST))
            {
                if (flags & NI_NAMEREQD)
                    return EAI_NONAME;
            }


            uint32_t ipv4 = ntohl (addr->sin_addr.s_addr);

            if (snprintf (host, hostlen, "%u.%u.%u.%u", ipv4 >> 24,
                          (ipv4 >> 16) & 0xff, (ipv4 >> 8) & 0xff,
                          ipv4 & 0xff) >= (int)hostlen)
                return EAI_OVERFLOW;
        }

        if (serv != ((void*)0))
        {
            if (snprintf (serv, servlen, "%u",
                          (unsigned int)ntohs (addr->sin_port)) >= (int)servlen)
                return EAI_OVERFLOW;
        }
    }
    return 0;
}
