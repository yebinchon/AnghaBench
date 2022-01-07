
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
typedef int buf ;
typedef int WCHAR ;




 int INET6_ADDRSTRLEN ;
 int WARN (char*,int) ;
 int inet_ntop (int,void*,char*,int) ;
 int * strdupAW (char*) ;

__attribute__((used)) static WCHAR *addr_to_str( struct sockaddr_storage *addr )
{
    char buf[INET6_ADDRSTRLEN];
    void *src;

    switch (addr->ss_family)
    {
    case 129:
        src = &((struct sockaddr_in *)addr)->sin_addr;
        break;
    case 128:
        src = &((struct sockaddr_in6 *)addr)->sin6_addr;
        break;
    default:
        WARN("unsupported address family %d\n", addr->ss_family);
        return ((void*)0);
    }
    if (!inet_ntop( addr->ss_family, src, buf, sizeof(buf) )) return ((void*)0);
    return strdupAW( buf );
}
