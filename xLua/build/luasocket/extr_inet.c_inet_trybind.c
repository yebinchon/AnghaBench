
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ t_socket ;
struct addrinfo {scalar_t__ ai_addrlen; scalar_t__ ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int socklen_t ;
typedef scalar_t__* p_socket ;
typedef int SA ;


 scalar_t__ SOCKET_INVALID ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int socket_bind (scalar_t__*,int *,int ) ;
 int socket_create (scalar_t__*,int ,int ,int ) ;
 int socket_destroy (scalar_t__*) ;
 char* socket_gaistrerror (int ) ;
 char* socket_strerror (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

const char *inet_trybind(p_socket ps, const char *address, const char *serv,
        struct addrinfo *bindhints)
{
    struct addrinfo *iterator = ((void*)0), *resolved = ((void*)0);
    const char *err = ((void*)0);
    t_socket sock = *ps;

    if (strcmp(address, "*") == 0) address = ((void*)0);
    if (!serv) serv = "0";

    err = socket_gaistrerror(getaddrinfo(address, serv, bindhints, &resolved));
    if (err) {
        if (resolved) freeaddrinfo(resolved);
        return err;
    }

    for (iterator = resolved; iterator; iterator = iterator->ai_next) {
        if(sock == SOCKET_INVALID) {
            err = socket_strerror(socket_create(&sock, iterator->ai_family,
                        iterator->ai_socktype, iterator->ai_protocol));
            if(err)
                continue;
        }

        err = socket_strerror(socket_bind(&sock,
            (SA *) iterator->ai_addr,
            (socklen_t) iterator->ai_addrlen));


        if (err) {
            if(sock != *ps)
                socket_destroy(&sock);
        } else {

            *bindhints = *iterator;
            break;
        }
    }

    freeaddrinfo(resolved);
    *ps = sock;
    return err;
}
