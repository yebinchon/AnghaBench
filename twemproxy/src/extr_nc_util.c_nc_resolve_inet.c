
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {scalar_t__ data; } ;
struct sockinfo {scalar_t__ addrlen; int addr; int family; } ;
struct addrinfo {int * ai_addr; scalar_t__ ai_addrlen; int ai_family; struct addrinfo* ai_next; int ai_flags; int * ai_canonname; scalar_t__ ai_protocol; int ai_socktype; } ;
typedef int hints ;


 int AF_UNSPEC ;
 int AI_NUMERICSERV ;
 int AI_PASSIVE ;
 int ASSERT (int ) ;
 int NC_UINTMAX_MAXLEN ;
 int SOCK_STREAM ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int log_error (char*,char*,char*,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int nc_memcpy (int *,int *,scalar_t__) ;
 int nc_snprintf (char*,int,char*,int) ;
 int nc_valid_port (int) ;

__attribute__((used)) static int
nc_resolve_inet(struct string *name, int port, struct sockinfo *si)
{
    int status;
    struct addrinfo *ai, *cai;
    struct addrinfo hints;
    char *node, service[NC_UINTMAX_MAXLEN];
    bool found;

    ASSERT(nc_valid_port(port));

    memset(&hints, 0, sizeof(hints));
    hints.ai_flags = AI_NUMERICSERV;
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = 0;
    hints.ai_addrlen = 0;
    hints.ai_addr = ((void*)0);
    hints.ai_canonname = ((void*)0);

    if (name != ((void*)0)) {
        node = (char *)name->data;
    } else {






        node = ((void*)0);
        hints.ai_flags |= AI_PASSIVE;
    }

    nc_snprintf(service, NC_UINTMAX_MAXLEN, "%d", port);





    status = getaddrinfo(node, service, &hints, &ai);
    if (status != 0) {
        log_error("address resolution of node '%s' service '%s' failed: %s",
                  node, service, gai_strerror(status));
        return -1;
    }
    for (cai = ai, found = 0; cai != ((void*)0); cai = cai->ai_next) {
        si->family = cai->ai_family;
        si->addrlen = cai->ai_addrlen;
        nc_memcpy(&si->addr, cai->ai_addr, si->addrlen);
        found = 1;
        break;
    }

    freeaddrinfo(ai);

    return !found ? -1 : 0;
}
