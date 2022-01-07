
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char* sds ;
typedef int psync_offset ;
typedef int connection ;
struct TYPE_4__ {int master_initial_offset; char* master_replid; char* replid2; char* replid; int * repl_backlog; TYPE_1__* cached_master; scalar_t__ master_repl_offset; scalar_t__ second_replid_offset; } ;
struct TYPE_3__ {char* replid; scalar_t__ reploff; } ;


 int CONFIG_RUN_ID_SIZE ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int PSYNC_CONTINUE ;
 int PSYNC_FULLRESYNC ;
 int PSYNC_NOT_SUPPORTED ;
 int PSYNC_TRY_LATER ;
 int PSYNC_WAIT_REPLY ;
 int PSYNC_WRITE_ERROR ;
 int SYNC_CMD_READ ;
 int SYNC_CMD_WRITE ;
 int connSetReadHandler (int *,int *) ;
 int createReplicationBacklog () ;
 int disconnectSlaves () ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int replicationDiscardCachedMaster () ;
 int replicationResurrectCachedMaster (int *) ;
 int sdsfree (char*) ;
 scalar_t__ sdslen (char*) ;
 char* sendSynchronousCommand (int ,int *,char*,...) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,...) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtoll (char*,int *,int) ;

int slaveTryPartialResynchronization(connection *conn, int read_reply) {
    char *psync_replid;
    char psync_offset[32];
    sds reply;


    if (!read_reply) {





        server.master_initial_offset = -1;

        if (server.cached_master) {
            psync_replid = server.cached_master->replid;
            snprintf(psync_offset,sizeof(psync_offset),"%lld", server.cached_master->reploff+1);
            serverLog(LL_NOTICE,"Trying a partial resynchronization (request %s:%s).", psync_replid, psync_offset);
        } else {
            serverLog(LL_NOTICE,"Partial resynchronization not possible (no cached master)");
            psync_replid = "?";
            memcpy(psync_offset,"-1",3);
        }


        reply = sendSynchronousCommand(SYNC_CMD_WRITE,conn,"PSYNC",psync_replid,psync_offset,((void*)0));
        if (reply != ((void*)0)) {
            serverLog(LL_WARNING,"Unable to send PSYNC to master: %s",reply);
            sdsfree(reply);
            connSetReadHandler(conn, ((void*)0));
            return PSYNC_WRITE_ERROR;
        }
        return PSYNC_WAIT_REPLY;
    }


    reply = sendSynchronousCommand(SYNC_CMD_READ,conn,((void*)0));
    if (sdslen(reply) == 0) {


        sdsfree(reply);
        return PSYNC_WAIT_REPLY;
    }

    connSetReadHandler(conn, ((void*)0));

    if (!strncmp(reply,"+FULLRESYNC",11)) {
        char *replid = ((void*)0), *offset = ((void*)0);



        replid = strchr(reply,' ');
        if (replid) {
            replid++;
            offset = strchr(replid,' ');
            if (offset) offset++;
        }
        if (!replid || !offset || (offset-replid-1) != CONFIG_RUN_ID_SIZE) {
            serverLog(LL_WARNING,
                "Master replied with wrong +FULLRESYNC syntax.");




            memset(server.master_replid,0,CONFIG_RUN_ID_SIZE+1);
        } else {
            memcpy(server.master_replid, replid, offset-replid-1);
            server.master_replid[CONFIG_RUN_ID_SIZE] = '\0';
            server.master_initial_offset = strtoll(offset,((void*)0),10);
            serverLog(LL_NOTICE,"Full resync from master: %s:%lld",
                server.master_replid,
                server.master_initial_offset);
        }

        replicationDiscardCachedMaster();
        sdsfree(reply);
        return PSYNC_FULLRESYNC;
    }

    if (!strncmp(reply,"+CONTINUE",9)) {

        serverLog(LL_NOTICE,
            "Successful partial resynchronization with master.");






        char *start = reply+10;
        char *end = reply+9;
        while(end[0] != '\r' && end[0] != '\n' && end[0] != '\0') end++;
        if (end-start == CONFIG_RUN_ID_SIZE) {
            char new[CONFIG_RUN_ID_SIZE+1];
            memcpy(new,start,CONFIG_RUN_ID_SIZE);
            new[CONFIG_RUN_ID_SIZE] = '\0';

            if (strcmp(new,server.cached_master->replid)) {

                serverLog(LL_WARNING,"Master replication ID changed to %s",new);


                memcpy(server.replid2,server.cached_master->replid,
                    sizeof(server.replid2));
                server.second_replid_offset = server.master_repl_offset+1;



                memcpy(server.replid,new,sizeof(server.replid));
                memcpy(server.cached_master->replid,new,sizeof(server.replid));


                disconnectSlaves();
            }
        }


        sdsfree(reply);
        replicationResurrectCachedMaster(conn);




        if (server.repl_backlog == ((void*)0)) createReplicationBacklog();
        return PSYNC_CONTINUE;
    }
    if (!strncmp(reply,"-NOMASTERLINK",13) ||
        !strncmp(reply,"-LOADING",8))
    {
        serverLog(LL_NOTICE,
            "Master is currently unable to PSYNC "
            "but should be in the future: %s", reply);
        sdsfree(reply);
        return PSYNC_TRY_LATER;
    }

    if (strncmp(reply,"-ERR",4)) {

        serverLog(LL_WARNING,
            "Unexpected reply to PSYNC from master: %s", reply);
    } else {
        serverLog(LL_NOTICE,
            "Master does not support PSYNC or is in "
            "error state (reply: %s)", reply);
    }
    sdsfree(reply);
    replicationDiscardCachedMaster();
    return PSYNC_NOT_SUPPORTED;
}
