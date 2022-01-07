
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ repl_diskless_load; } ;


 int LL_WARNING ;
 scalar_t__ REPL_DISKLESS_LOAD_SWAPDB ;
 scalar_t__ REPL_DISKLESS_LOAD_WHEN_DB_EMPTY ;
 scalar_t__ dbTotalServerKeyCount () ;
 int moduleAllDatatypesHandleErrors () ;
 TYPE_1__ server ;
 int serverLog (int ,char*) ;

__attribute__((used)) static int useDisklessLoad() {

    int enabled = server.repl_diskless_load == REPL_DISKLESS_LOAD_SWAPDB ||
           (server.repl_diskless_load == REPL_DISKLESS_LOAD_WHEN_DB_EMPTY && dbTotalServerKeyCount()==0);

    if (enabled && !moduleAllDatatypesHandleErrors()) {
        serverLog(LL_WARNING,
            "Skipping diskless-load because there are modules that don't handle read errors.");
        enabled = 0;
    }
    return enabled;
}
