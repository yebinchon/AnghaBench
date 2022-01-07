
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
typedef int on ;
typedef int evutil_socket_t ;


 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int ccnet_warning (char*,...) ;
 int errno ;
 int free (struct sockaddr*) ;
 struct sockaddr* malloc (int ) ;
 scalar_t__ mcast_join (int,struct sockaddr*,int ,int *,int ) ;
 int memcpy (struct sockaddr*,struct sockaddr*,int ) ;
 int setsockopt (int,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;

evutil_socket_t
create_multicast_sock (struct sockaddr *sasend, socklen_t salen)
{
    int ret;
    const int on = 1;
    evutil_socket_t recvfd;
    struct sockaddr *sarecv;

    if ( (recvfd = socket (sasend->sa_family, SOCK_DGRAM, 0)) < 0) {
        ccnet_warning ("Create multicast listen socket fails: %s\n",
                     strerror(errno));
        return -1;
    }
    ret = setsockopt(recvfd, SOL_SOCKET, SO_REUSEADDR, (char *)&on, sizeof(on));
    if (ret < 0)
        ccnet_warning("Failed to setsockopt SO_REUSEADDR\n");
    sarecv = malloc(salen);
    memcpy(sarecv, sasend, salen);

    if (bind(recvfd, sarecv, salen) < 0) {
        ccnet_warning ("Bind multicast listen socket fails: %s\n",
                       strerror(errno));
        free (sarecv);
        return -1;
    }
    free (sarecv);

    if (mcast_join(recvfd, sasend, salen, ((void*)0), 0) < 0) {
        ccnet_warning ("mcast_join error: %s\n", strerror(errno));
        return -1;
    }

    return recvfd;
}
