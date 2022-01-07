
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mstime_t ;
struct TYPE_2__ {int aof_child_pid; int aof_fd; char* aof_filename; scalar_t__ aof_fsync; int aof_selected_db; scalar_t__ aof_state; int aof_rewrite_time_start; int aof_rewrite_scheduled; scalar_t__ aof_rewrite_time_last; void* aof_lastbgrewrite_status; int aof_buf; int aof_current_size; int aof_rewrite_base_size; } ;


 scalar_t__ AOF_FSYNC_ALWAYS ;
 scalar_t__ AOF_FSYNC_EVERYSEC ;
 scalar_t__ AOF_ON ;
 scalar_t__ AOF_WAIT_REWRITE ;
 int BIO_CLOSE_FILE ;
 void* C_ERR ;
 void* C_OK ;
 int LL_NOTICE ;
 int LL_VERBOSE ;
 int LL_WARNING ;
 int O_APPEND ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SIGUSR1 ;
 int aofClosePipes () ;
 int aofRemoveTempFile (int) ;
 int aofRewriteBufferReset () ;
 scalar_t__ aofRewriteBufferSize () ;
 int aofRewriteBufferWrite (int) ;
 int aofUpdateCurrentSize () ;
 int aof_background_fsync (int) ;
 int bioCreateBackgroundJob (int ,void*,int *,int *) ;
 int close (int) ;
 int errno ;
 int latencyAddSampleIfNeeded (char*,int ) ;
 int latencyEndMonitor (int ) ;
 int latencyStartMonitor (int ) ;
 int open (char*,int) ;
 int redis_fsync (int) ;
 int rename (char*,char*) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int snprintf (char*,int,char*,int) ;
 int strerror (int ) ;
 scalar_t__ time (int *) ;
 long long ustime () ;

void backgroundRewriteDoneHandler(int exitcode, int bysignal) {
    if (!bysignal && exitcode == 0) {
        int newfd, oldfd;
        char tmpfile[256];
        long long now = ustime();
        mstime_t latency;

        serverLog(LL_NOTICE,
            "Background AOF rewrite terminated with success");



        latencyStartMonitor(latency);
        snprintf(tmpfile,256,"temp-rewriteaof-bg-%d.aof",
            (int)server.aof_child_pid);
        newfd = open(tmpfile,O_WRONLY|O_APPEND);
        if (newfd == -1) {
            serverLog(LL_WARNING,
                "Unable to open the temporary AOF produced by the child: %s", strerror(errno));
            goto cleanup;
        }

        if (aofRewriteBufferWrite(newfd) == -1) {
            serverLog(LL_WARNING,
                "Error trying to flush the parent diff to the rewritten AOF: %s", strerror(errno));
            close(newfd);
            goto cleanup;
        }
        latencyEndMonitor(latency);
        latencyAddSampleIfNeeded("aof-rewrite-diff-write",latency);

        serverLog(LL_NOTICE,
            "Residual parent diff successfully flushed to the rewritten AOF (%.2f MB)", (double) aofRewriteBufferSize() / (1024*1024));
        if (server.aof_fd == -1) {





            oldfd = open(server.aof_filename,O_RDONLY|O_NONBLOCK);
        } else {

            oldfd = -1;
        }



        latencyStartMonitor(latency);
        if (rename(tmpfile,server.aof_filename) == -1) {
            serverLog(LL_WARNING,
                "Error trying to rename the temporary AOF file %s into %s: %s",
                tmpfile,
                server.aof_filename,
                strerror(errno));
            close(newfd);
            if (oldfd != -1) close(oldfd);
            goto cleanup;
        }
        latencyEndMonitor(latency);
        latencyAddSampleIfNeeded("aof-rename",latency);

        if (server.aof_fd == -1) {


            close(newfd);
        } else {

            oldfd = server.aof_fd;
            server.aof_fd = newfd;
            if (server.aof_fsync == AOF_FSYNC_ALWAYS)
                redis_fsync(newfd);
            else if (server.aof_fsync == AOF_FSYNC_EVERYSEC)
                aof_background_fsync(newfd);
            server.aof_selected_db = -1;
            aofUpdateCurrentSize();
            server.aof_rewrite_base_size = server.aof_current_size;
            server.aof_current_size = server.aof_current_size;



            sdsfree(server.aof_buf);
            server.aof_buf = sdsempty();
        }

        server.aof_lastbgrewrite_status = C_OK;

        serverLog(LL_NOTICE, "Background AOF rewrite finished successfully");

        if (server.aof_state == AOF_WAIT_REWRITE)
            server.aof_state = AOF_ON;


        if (oldfd != -1) bioCreateBackgroundJob(BIO_CLOSE_FILE,(void*)(long)oldfd,((void*)0),((void*)0));

        serverLog(LL_VERBOSE,
            "Background AOF rewrite signal handler took %lldus", ustime()-now);
    } else if (!bysignal && exitcode != 0) {


        if (bysignal != SIGUSR1)
            server.aof_lastbgrewrite_status = C_ERR;
        serverLog(LL_WARNING,
            "Background AOF rewrite terminated with error");
    } else {
        server.aof_lastbgrewrite_status = C_ERR;

        serverLog(LL_WARNING,
            "Background AOF rewrite terminated by signal %d", bysignal);
    }

cleanup:
    aofClosePipes();
    aofRewriteBufferReset();
    aofRemoveTempFile(server.aof_child_pid);
    server.aof_child_pid = -1;
    server.aof_rewrite_time_last = time(((void*)0))-server.aof_rewrite_time_start;
    server.aof_rewrite_time_start = -1;

    if (server.aof_state == AOF_WAIT_REWRITE)
        server.aof_rewrite_scheduled = 1;
}
