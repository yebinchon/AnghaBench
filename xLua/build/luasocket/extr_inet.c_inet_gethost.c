
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct hostent {int dummy; } ;
typedef int addr ;


 scalar_t__ inet_aton (char const*,struct in_addr*) ;
 int socket_gethostbyaddr (char*,int,struct hostent**) ;
 int socket_gethostbyname (char const*,struct hostent**) ;

__attribute__((used)) static int inet_gethost(const char *address, struct hostent **hp) {
    struct in_addr addr;
    if (inet_aton(address, &addr))
        return socket_gethostbyaddr((char *) &addr, sizeof(addr), hp);
    else
        return socket_gethostbyname(address, hp);
}
