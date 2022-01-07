
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_family; scalar_t__ ai_addrlen; scalar_t__ ai_addr; int ai_protocol; int ai_socktype; struct addrinfo* ai_next; } ;
typedef int socklen_t ;
typedef int p_timeout ;
typedef int p_socket ;
typedef int SA ;


 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int socket_connect (int ,int *,int ,int ) ;
 int socket_create (int ,int,int ,int ) ;
 int socket_destroy (int ) ;
 char* socket_gaistrerror (int ) ;
 int socket_setnonblocking (int ) ;
 char* socket_strerror (int ) ;
 int timeout_markstart (int ) ;

const char *inet_tryconnect(p_socket ps, int *family, const char *address,
        const char *serv, p_timeout tm, struct addrinfo *connecthints)
{
    struct addrinfo *iterator = ((void*)0), *resolved = ((void*)0);
    const char *err = ((void*)0);

    err = socket_gaistrerror(getaddrinfo(address, serv,
                connecthints, &resolved));
    if (err != ((void*)0)) {
        if (resolved) freeaddrinfo(resolved);
        return err;
    }
    for (iterator = resolved; iterator; iterator = iterator->ai_next) {
        timeout_markstart(tm);





        if (*family != iterator->ai_family) {
            socket_destroy(ps);
            err = socket_strerror(socket_create(ps, iterator->ai_family,
                iterator->ai_socktype, iterator->ai_protocol));
            if (err != ((void*)0)) {
                freeaddrinfo(resolved);
                return err;
            }
            *family = iterator->ai_family;

            socket_setnonblocking(ps);
        }

        err = socket_strerror(socket_connect(ps, (SA *) iterator->ai_addr,
            (socklen_t) iterator->ai_addrlen, tm));

        if (err == ((void*)0)) break;
    }
    freeaddrinfo(resolved);

    return err;
}
