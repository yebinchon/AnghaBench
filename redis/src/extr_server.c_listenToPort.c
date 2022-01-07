
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bindaddr_count; char** bindaddr; int neterr; int tcp_backlog; } ;


 int ANET_ERR ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ EADDRNOTAVAIL ;
 scalar_t__ EAFNOSUPPORT ;
 scalar_t__ ENOPROTOOPT ;
 scalar_t__ EPFNOSUPPORT ;
 scalar_t__ EPROTONOSUPPORT ;
 scalar_t__ ESOCKTNOSUPPORT ;
 int LL_WARNING ;
 int anetNonBlock (int *,int) ;
 int anetTcp6Server (int ,int,char*,int ) ;
 int anetTcpServer (int ,int,char*,int ) ;
 scalar_t__ errno ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 scalar_t__ strchr (char*,char) ;

int listenToPort(int port, int *fds, int *count) {
    int j;



    if (server.bindaddr_count == 0) server.bindaddr[0] = ((void*)0);
    for (j = 0; j < server.bindaddr_count || j == 0; j++) {
        if (server.bindaddr[j] == ((void*)0)) {
            int unsupported = 0;


            fds[*count] = anetTcp6Server(server.neterr,port,((void*)0),
                server.tcp_backlog);
            if (fds[*count] != ANET_ERR) {
                anetNonBlock(((void*)0),fds[*count]);
                (*count)++;
            } else if (errno == EAFNOSUPPORT) {
                unsupported++;
                serverLog(LL_WARNING,"Not listening to IPv6: unsupported");
            }

            if (*count == 1 || unsupported) {

                fds[*count] = anetTcpServer(server.neterr,port,((void*)0),
                    server.tcp_backlog);
                if (fds[*count] != ANET_ERR) {
                    anetNonBlock(((void*)0),fds[*count]);
                    (*count)++;
                } else if (errno == EAFNOSUPPORT) {
                    unsupported++;
                    serverLog(LL_WARNING,"Not listening to IPv4: unsupported");
                }
            }



            if (*count + unsupported == 2) break;
        } else if (strchr(server.bindaddr[j],':')) {

            fds[*count] = anetTcp6Server(server.neterr,port,server.bindaddr[j],
                server.tcp_backlog);
        } else {

            fds[*count] = anetTcpServer(server.neterr,port,server.bindaddr[j],
                server.tcp_backlog);
        }
        if (fds[*count] == ANET_ERR) {
            serverLog(LL_WARNING,
                "Could not create server TCP listening socket %s:%d: %s",
                server.bindaddr[j] ? server.bindaddr[j] : "*",
                port, server.neterr);
                if (errno == ENOPROTOOPT || errno == EPROTONOSUPPORT ||
                    errno == ESOCKTNOSUPPORT || errno == EPFNOSUPPORT ||
                    errno == EAFNOSUPPORT || errno == EADDRNOTAVAIL)
                    continue;
            return C_ERR;
        }
        anetNonBlock(((void*)0),fds[*count]);
        (*count)++;
    }
    return C_OK;
}
