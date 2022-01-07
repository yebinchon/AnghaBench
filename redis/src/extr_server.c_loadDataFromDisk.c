
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int repl_offset; int repl_stream_db; int repl_id; scalar_t__ repl_id_is_set; } ;
typedef TYPE_2__ rdbSaveInfo ;
struct TYPE_8__ {scalar_t__ aof_state; int master_repl_offset; int cached_master; int replid; TYPE_1__* cluster; scalar_t__ cluster_enabled; scalar_t__ masterhost; int rdb_filename; int aof_filename; } ;
struct TYPE_6__ {int myself; } ;


 scalar_t__ AOF_ON ;
 scalar_t__ C_OK ;
 scalar_t__ ENOENT ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int RDBFLAGS_NONE ;
 TYPE_2__ RDB_SAVE_INFO_INIT ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ loadAppendOnlyFile (int ) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ nodeIsSlave (int ) ;
 scalar_t__ rdbLoad (int ,TYPE_2__*,int ) ;
 int replicationCacheMasterUsingMyself () ;
 int selectDb (int ,int) ;
 TYPE_3__ server ;
 int serverLog (int ,char*,float) ;
 float strerror (scalar_t__) ;
 long long ustime () ;

void loadDataFromDisk(void) {
    long long start = ustime();
    if (server.aof_state == AOF_ON) {
        if (loadAppendOnlyFile(server.aof_filename) == C_OK)
            serverLog(LL_NOTICE,"DB loaded from append only file: %.3f seconds",(float)(ustime()-start)/1000000);
    } else {
        rdbSaveInfo rsi = RDB_SAVE_INFO_INIT;
        if (rdbLoad(server.rdb_filename,&rsi,RDBFLAGS_NONE) == C_OK) {
            serverLog(LL_NOTICE,"DB loaded from disk: %.3f seconds",
                (float)(ustime()-start)/1000000);


            if ((server.masterhost ||
                (server.cluster_enabled &&
                nodeIsSlave(server.cluster->myself))) &&
                rsi.repl_id_is_set &&
                rsi.repl_offset != -1 &&



                rsi.repl_stream_db != -1)
            {
                memcpy(server.replid,rsi.repl_id,sizeof(server.replid));
                server.master_repl_offset = rsi.repl_offset;



                replicationCacheMasterUsingMyself();
                selectDb(server.cached_master,rsi.repl_stream_db);
            }
        } else if (errno != ENOENT) {
            serverLog(LL_WARNING,"Fatal error loading the DB: %s. Exiting.",strerror(errno));
            exit(1);
        }
    }
}
