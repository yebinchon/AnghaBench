
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int ssize_t ;
typedef int mstime_t ;
struct TYPE_2__ {scalar_t__ aof_fsync; scalar_t__ aof_fsync_offset; scalar_t__ aof_current_size; scalar_t__ unixtime; scalar_t__ aof_last_fsync; scalar_t__ aof_flush_postponed_start; scalar_t__ aof_last_write_status; int aof_fd; scalar_t__ aof_no_fsync_on_rewrite; int aof_buf; int aof_last_write_errno; scalar_t__ aof_flush_sleep; int aof_delayed_fsync; } ;


 scalar_t__ AOF_FSYNC_ALWAYS ;
 scalar_t__ AOF_FSYNC_EVERYSEC ;
 scalar_t__ AOF_WRITE_LOG_ERROR_RATE ;
 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 int ENOSPC ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int aofFsyncInProgress () ;
 int aofWrite (int ,int ,int) ;
 int aof_background_fsync (int ) ;
 int errno ;
 int exit (int) ;
 int ftruncate (int ,scalar_t__) ;
 scalar_t__ hasActiveChildProcess () ;
 int latencyAddSampleIfNeeded (char*,int ) ;
 int latencyEndMonitor (int ) ;
 int latencyStartMonitor (int ) ;
 int redis_fsync (int ) ;
 int sdsavail (int ) ;
 int sdsclear (int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 int sdsrange (int ,int,int) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int strerror (int ) ;
 int usleep (scalar_t__) ;

void flushAppendOnlyFile(int force) {
    ssize_t nwritten;
    int sync_in_progress = 0;
    mstime_t latency;

    if (sdslen(server.aof_buf) == 0) {





        if (server.aof_fsync == AOF_FSYNC_EVERYSEC &&
            server.aof_fsync_offset != server.aof_current_size &&
            server.unixtime > server.aof_last_fsync &&
            !(sync_in_progress = aofFsyncInProgress())) {
            goto try_fsync;
        } else {
            return;
        }
    }

    if (server.aof_fsync == AOF_FSYNC_EVERYSEC)
        sync_in_progress = aofFsyncInProgress();

    if (server.aof_fsync == AOF_FSYNC_EVERYSEC && !force) {



        if (sync_in_progress) {
            if (server.aof_flush_postponed_start == 0) {


                server.aof_flush_postponed_start = server.unixtime;
                return;
            } else if (server.unixtime - server.aof_flush_postponed_start < 2) {


                return;
            }


            server.aof_delayed_fsync++;
            serverLog(LL_NOTICE,"Asynchronous AOF fsync is taking too long (disk is busy?). Writing the AOF buffer without waiting for fsync to complete, this may slow down Redis.");
        }
    }






    if (server.aof_flush_sleep && sdslen(server.aof_buf)) {
        usleep(server.aof_flush_sleep);
    }

    latencyStartMonitor(latency);
    nwritten = aofWrite(server.aof_fd,server.aof_buf,sdslen(server.aof_buf));
    latencyEndMonitor(latency);





    if (sync_in_progress) {
        latencyAddSampleIfNeeded("aof-write-pending-fsync",latency);
    } else if (hasActiveChildProcess()) {
        latencyAddSampleIfNeeded("aof-write-active-child",latency);
    } else {
        latencyAddSampleIfNeeded("aof-write-alone",latency);
    }
    latencyAddSampleIfNeeded("aof-write",latency);


    server.aof_flush_postponed_start = 0;

    if (nwritten != (ssize_t)sdslen(server.aof_buf)) {
        static time_t last_write_error_log = 0;
        int can_log = 0;


        if ((server.unixtime - last_write_error_log) > AOF_WRITE_LOG_ERROR_RATE) {
            can_log = 1;
            last_write_error_log = server.unixtime;
        }


        if (nwritten == -1) {
            if (can_log) {
                serverLog(LL_WARNING,"Error writing to the AOF file: %s",
                    strerror(errno));
                server.aof_last_write_errno = errno;
            }
        } else {
            if (can_log) {
                serverLog(LL_WARNING,"Short write while writing to "
                                       "the AOF file: (nwritten=%lld, "
                                       "expected=%lld)",
                                       (long long)nwritten,
                                       (long long)sdslen(server.aof_buf));
            }

            if (ftruncate(server.aof_fd, server.aof_current_size) == -1) {
                if (can_log) {
                    serverLog(LL_WARNING, "Could not remove short write "
                             "from the append-only file.  Redis may refuse "
                             "to load the AOF the next time it starts.  "
                             "ftruncate: %s", strerror(errno));
                }
            } else {


                nwritten = -1;
            }
            server.aof_last_write_errno = ENOSPC;
        }


        if (server.aof_fsync == AOF_FSYNC_ALWAYS) {




            serverLog(LL_WARNING,"Can't recover from AOF write error when the AOF fsync policy is 'always'. Exiting...");
            exit(1);
        } else {



            server.aof_last_write_status = C_ERR;



            if (nwritten > 0) {
                server.aof_current_size += nwritten;
                sdsrange(server.aof_buf,nwritten,-1);
            }
            return;
        }
    } else {


        if (server.aof_last_write_status == C_ERR) {
            serverLog(LL_WARNING,
                "AOF write error looks solved, Redis can write again.");
            server.aof_last_write_status = C_OK;
        }
    }
    server.aof_current_size += nwritten;



    if ((sdslen(server.aof_buf)+sdsavail(server.aof_buf)) < 4000) {
        sdsclear(server.aof_buf);
    } else {
        sdsfree(server.aof_buf);
        server.aof_buf = sdsempty();
    }

try_fsync:


    if (server.aof_no_fsync_on_rewrite && hasActiveChildProcess())
        return;


    if (server.aof_fsync == AOF_FSYNC_ALWAYS) {


        latencyStartMonitor(latency);
        redis_fsync(server.aof_fd);
        latencyEndMonitor(latency);
        latencyAddSampleIfNeeded("aof-fsync-always",latency);
        server.aof_fsync_offset = server.aof_current_size;
        server.aof_last_fsync = server.unixtime;
    } else if ((server.aof_fsync == AOF_FSYNC_EVERYSEC &&
                server.unixtime > server.aof_last_fsync)) {
        if (!sync_in_progress) {
            aof_background_fsync(server.aof_fd);
            server.aof_fsync_offset = server.aof_current_size;
        }
        server.aof_last_fsync = server.unixtime;
    }
}
