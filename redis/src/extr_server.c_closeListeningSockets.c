
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipfd_count; int* ipfd; int tlsfd_count; int* tlsfd; int sofd; int cfd_count; int* cfd; scalar_t__ unixsocket; scalar_t__ cluster_enabled; } ;


 int LL_NOTICE ;
 int close (int) ;
 TYPE_1__ server ;
 int serverLog (int ,char*) ;
 int unlink (scalar_t__) ;

void closeListeningSockets(int unlink_unix_socket) {
    int j;

    for (j = 0; j < server.ipfd_count; j++) close(server.ipfd[j]);
    for (j = 0; j < server.tlsfd_count; j++) close(server.tlsfd[j]);
    if (server.sofd != -1) close(server.sofd);
    if (server.cluster_enabled)
        for (j = 0; j < server.cfd_count; j++) close(server.cfd[j]);
    if (unlink_unix_socket && server.unixsocket) {
        serverLog(LL_NOTICE,"Removing the unix socket file.");
        unlink(server.unixsocket);
    }
}
