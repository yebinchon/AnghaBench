
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockinfo {int addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int si ;


 int getpeername (int,struct sockaddr*,int*) ;
 int memset (struct sockinfo*,int ,int) ;
 char* nc_unresolve_addr (struct sockaddr*,int) ;

char *
nc_unresolve_peer_desc(int sd)
{
    static struct sockinfo si;
    struct sockaddr *addr;
    socklen_t addrlen;
    int status;

    memset(&si, 0, sizeof(si));
    addr = (struct sockaddr *)&si.addr;
    addrlen = sizeof(si.addr);

    status = getpeername(sd, addr, &addrlen);
    if (status < 0) {
        return "unknown";
    }

    return nc_unresolve_addr(addr, addrlen);
}
