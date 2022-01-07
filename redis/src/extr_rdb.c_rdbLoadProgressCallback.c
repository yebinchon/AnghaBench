
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t processed_bytes; } ;
typedef TYPE_1__ rio ;
struct TYPE_6__ {size_t loading_process_events_interval_bytes; scalar_t__ repl_state; scalar_t__ masterhost; scalar_t__ rdb_checksum; } ;


 scalar_t__ REPL_STATE_TRANSFER ;
 int loadingProgress (size_t) ;
 int processEventsWhileBlocked () ;
 int processModuleLoadingProgressEvent (int ) ;
 int replicationSendNewlineToMaster () ;
 int rioGenericUpdateChecksum (TYPE_1__*,void const*,size_t) ;
 TYPE_2__ server ;
 int updateCachedTime (int ) ;

void rdbLoadProgressCallback(rio *r, const void *buf, size_t len) {
    if (server.rdb_checksum)
        rioGenericUpdateChecksum(r, buf, len);
    if (server.loading_process_events_interval_bytes &&
        (r->processed_bytes + len)/server.loading_process_events_interval_bytes > r->processed_bytes/server.loading_process_events_interval_bytes)
    {



        updateCachedTime(0);
        if (server.masterhost && server.repl_state == REPL_STATE_TRANSFER)
            replicationSendNewlineToMaster();
        loadingProgress(r->processed_bytes);
        processEventsWhileBlocked();
        processModuleLoadingProgressEvent(0);
    }
}
