
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int repl_stream_db; } ;
typedef TYPE_5__ rdbSaveInfo ;
struct TYPE_15__ {int slaveseldb; TYPE_3__* cached_master; TYPE_4__* master; scalar_t__ repl_backlog; int masterhost; } ;
struct TYPE_13__ {TYPE_1__* db; } ;
struct TYPE_12__ {TYPE_2__* db; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_10__ {int id; } ;


 TYPE_5__ RDB_SAVE_INFO_INIT ;
 TYPE_6__ server ;

rdbSaveInfo *rdbPopulateSaveInfo(rdbSaveInfo *rsi) {
    rdbSaveInfo rsi_init = RDB_SAVE_INFO_INIT;
    *rsi = rsi_init;
    if (!server.masterhost && server.repl_backlog) {





        rsi->repl_stream_db = server.slaveseldb == -1 ? 0 : server.slaveseldb;
        return rsi;
    }



    if (server.master) {
        rsi->repl_stream_db = server.master->db->id;
        return rsi;
    }






    if (server.cached_master) {
        rsi->repl_stream_db = server.cached_master->db->id;
        return rsi;
    }
    return ((void*)0);
}
