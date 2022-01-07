
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int conn; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {char* unixsocket; } ;


 int CLIENT_UNIX_SOCKET ;
 int connFormatPeer (int ,char*,size_t) ;
 TYPE_2__ server ;
 int snprintf (char*,size_t,char*,char*) ;

void genClientPeerId(client *client, char *peerid,
                            size_t peerid_len) {
    if (client->flags & CLIENT_UNIX_SOCKET) {

        snprintf(peerid,peerid_len,"%s:0",server.unixsocket);
    } else {

        connFormatPeer(client->conn,peerid,peerid_len);
    }
}
