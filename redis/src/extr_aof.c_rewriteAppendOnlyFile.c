
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rio ;
typedef int mstime_t ;
struct TYPE_2__ {int aof_child_diff; int aof_pipe_read_ack_from_parent; int aof_pipe_write_ack_to_parent; int aof_pipe_read_data_from_parent; scalar_t__ aof_use_rdb_preamble; scalar_t__ aof_rewrite_incremental_fsync; } ;
typedef int FILE ;


 int AE_READABLE ;
 scalar_t__ ANET_OK ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ EOF ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int RDBFLAGS_AOF_PREAMBLE ;
 int REDIS_AUTOSYNC_BYTES ;
 scalar_t__ aeWait (int ,int ,int) ;
 scalar_t__ anetNonBlock (int *,int ) ;
 int aofReadDiffFromParent () ;
 int errno ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fflush (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fsync (int ) ;
 scalar_t__ getpid () ;
 int mstime () ;
 int rdbSaveRio (int *,int*,int ,int *) ;
 int rename (char*,char*) ;
 int rewriteAppendOnlyFileRio (int *) ;
 int rioInitWithFile (int *,int *) ;
 int rioSetAutoSync (int *,int ) ;
 scalar_t__ rioWrite (int *,int ,scalar_t__) ;
 int sdsempty () ;
 scalar_t__ sdslen (int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int snprintf (char*,int,char*,int) ;
 int startSaving (int ) ;
 int stopSaving (int) ;
 double strerror (int) ;
 int syncRead (int ,char*,int,int) ;
 int unlink (char*) ;
 int write (int ,char*,int) ;

int rewriteAppendOnlyFile(char *filename) {
    rio aof;
    FILE *fp;
    char tmpfile[256];
    char byte;



    snprintf(tmpfile,256,"temp-rewriteaof-%d.aof", (int) getpid());
    fp = fopen(tmpfile,"w");
    if (!fp) {
        serverLog(LL_WARNING, "Opening the temp file for AOF rewrite in rewriteAppendOnlyFile(): %s", strerror(errno));
        return C_ERR;
    }

    server.aof_child_diff = sdsempty();
    rioInitWithFile(&aof,fp);

    if (server.aof_rewrite_incremental_fsync)
        rioSetAutoSync(&aof,REDIS_AUTOSYNC_BYTES);

    startSaving(RDBFLAGS_AOF_PREAMBLE);

    if (server.aof_use_rdb_preamble) {
        int error;
        if (rdbSaveRio(&aof,&error,RDBFLAGS_AOF_PREAMBLE,((void*)0)) == C_ERR) {
            errno = error;
            goto werr;
        }
    } else {
        if (rewriteAppendOnlyFileRio(&aof) == C_ERR) goto werr;
    }



    if (fflush(fp) == EOF) goto werr;
    if (fsync(fileno(fp)) == -1) goto werr;







    int nodata = 0;
    mstime_t start = mstime();
    while(mstime()-start < 1000 && nodata < 20) {
        if (aeWait(server.aof_pipe_read_data_from_parent, AE_READABLE, 1) <= 0)
        {
            nodata++;
            continue;
        }
        nodata = 0;

        aofReadDiffFromParent();
    }


    if (write(server.aof_pipe_write_ack_to_parent,"!",1) != 1) goto werr;
    if (anetNonBlock(((void*)0),server.aof_pipe_read_ack_from_parent) != ANET_OK)
        goto werr;



    if (syncRead(server.aof_pipe_read_ack_from_parent,&byte,1,5000) != 1 ||
        byte != '!') goto werr;
    serverLog(LL_NOTICE,"Parent agreed to stop sending diffs. Finalizing AOF...");


    aofReadDiffFromParent();


    serverLog(LL_NOTICE,
        "Concatenating %.2f MB of AOF diff received from parent.",
        (double) sdslen(server.aof_child_diff) / (1024*1024));
    if (rioWrite(&aof,server.aof_child_diff,sdslen(server.aof_child_diff)) == 0)
        goto werr;


    if (fflush(fp) == EOF) goto werr;
    if (fsync(fileno(fp)) == -1) goto werr;
    if (fclose(fp) == EOF) goto werr;



    if (rename(tmpfile,filename) == -1) {
        serverLog(LL_WARNING,"Error moving temp append only file on the final destination: %s", strerror(errno));
        unlink(tmpfile);
        stopSaving(0);
        return C_ERR;
    }
    serverLog(LL_NOTICE,"SYNC append only file rewrite performed");
    stopSaving(1);
    return C_OK;

werr:
    serverLog(LL_WARNING,"Write error writing append only file on disk: %s", strerror(errno));
    fclose(fp);
    unlink(tmpfile);
    stopSaving(0);
    return C_ERR;
}
