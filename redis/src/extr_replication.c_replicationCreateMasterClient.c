
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int connection ;
struct TYPE_5__ {int authenticated; int reploff; int read_reploff; int flags; int replid; int * user; int conn; } ;
struct TYPE_4__ {int master_initial_offset; TYPE_2__* master; int master_replid; } ;


 int CLIENT_MASTER ;
 int CLIENT_PRE_PSYNC ;
 int connSetReadHandler (int ,int ) ;
 TYPE_2__* createClient (int *) ;
 int memcpy (int ,int ,int) ;
 int readQueryFromClient ;
 int selectDb (TYPE_2__*,int) ;
 TYPE_1__ server ;

void replicationCreateMasterClient(connection *conn, int dbid) {
    server.master = createClient(conn);
    if (conn)
        connSetReadHandler(server.master->conn, readQueryFromClient);
    server.master->flags |= CLIENT_MASTER;
    server.master->authenticated = 1;
    server.master->reploff = server.master_initial_offset;
    server.master->read_reploff = server.master->reploff;
    server.master->user = ((void*)0);
    memcpy(server.master->replid, server.master_replid,
        sizeof(server.master_replid));


    if (server.master->reploff == -1)
        server.master->flags |= CLIENT_PRE_PSYNC;
    if (dbid != -1) selectDb(server.master,dbid);
}
