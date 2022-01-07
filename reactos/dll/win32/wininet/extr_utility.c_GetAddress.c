
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {void* sin6_port; int sin6_addr; } ;
struct sockaddr_in {void* sin_port; int sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int hints ;
typedef int WCHAR ;
struct TYPE_6__ {int ai_family; int ai_addrlen; int ai_addr; } ;
typedef int INTERNET_PORT ;
typedef int BOOL ;
typedef TYPE_1__ ADDRINFOW ;




 int FALSE ;
 int FreeAddrInfoW (TYPE_1__*) ;
 int GetAddrInfoW (int const*,int *,TYPE_1__*,TYPE_1__**) ;
 int INET6_ADDRSTRLEN ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int WARN (char*) ;
 int debugstr_w (int const*) ;
 void* htons (int ) ;
 int inet_ntop (int,void*,char*,int ) ;
 int memcpy (struct sockaddr*,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

BOOL GetAddress(const WCHAR *name, INTERNET_PORT port, struct sockaddr *psa, int *sa_len, char *addr_str)
{
    ADDRINFOW *res, hints;
    void *addr = ((void*)0);
    int ret;

    TRACE("%s\n", debugstr_w(name));

    memset( &hints, 0, sizeof(hints) );



    hints.ai_family = 129;

    ret = GetAddrInfoW(name, ((void*)0), &hints, &res);
    if (ret != 0)
    {
        TRACE("failed to get IPv4 address of %s, retrying with IPv6\n", debugstr_w(name));
        hints.ai_family = 128;
        ret = GetAddrInfoW(name, ((void*)0), &hints, &res);
    }
    if (ret != 0)
    {
        TRACE("failed to get address of %s\n", debugstr_w(name));
        return FALSE;
    }
    if (*sa_len < res->ai_addrlen)
    {
        WARN("address too small\n");
        FreeAddrInfoW(res);
        return FALSE;
    }
    *sa_len = res->ai_addrlen;
    memcpy( psa, res->ai_addr, res->ai_addrlen );

    switch (res->ai_family)
    {
    case 129:
        addr = &((struct sockaddr_in *)psa)->sin_addr;
        ((struct sockaddr_in *)psa)->sin_port = htons(port);
        break;
    case 128:
        addr = &((struct sockaddr_in6 *)psa)->sin6_addr;
        ((struct sockaddr_in6 *)psa)->sin6_port = htons(port);
        break;
    }

    if(addr_str)
        inet_ntop(res->ai_family, addr, addr_str, INET6_ADDRSTRLEN);
    FreeAddrInfoW(res);
    return TRUE;
}
