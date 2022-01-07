
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long long psync_initial_offset; int flags; int conn; int replstate; } ;
typedef TYPE_1__ client ;
typedef int buf ;
struct TYPE_6__ {int slaveseldb; char* replid; } ;


 int CLIENT_PRE_PSYNC ;
 int C_ERR ;
 int C_OK ;
 int SLAVE_STATE_WAIT_BGSAVE_END ;
 int connWrite (int ,char*,int) ;
 int freeClientAsync (TYPE_1__*) ;
 TYPE_2__ server ;
 int snprintf (char*,int,char*,char*,long long) ;

int replicationSetupSlaveForFullResync(client *slave, long long offset) {
    char buf[128];
    int buflen;

    slave->psync_initial_offset = offset;
    slave->replstate = SLAVE_STATE_WAIT_BGSAVE_END;



    server.slaveseldb = -1;



    if (!(slave->flags & CLIENT_PRE_PSYNC)) {
        buflen = snprintf(buf,sizeof(buf),"+FULLRESYNC %s %lld\r\n",
                          server.replid,offset);
        if (connWrite(slave->conn,buf,buflen) != buflen) {
            freeClientAsync(slave);
            return C_ERR;
        }
    }
    return C_OK;
}
