
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ active; scalar_t__ lines; int src; int conn; scalar_t__ forked; } ;


 int CLIENT_CLOSE_AFTER_REPLY ;
 int LL_WARNING ;
 int connNonBlock (int ) ;
 int connSendTimeout (int ,int ) ;
 int exitFromChild (int ) ;
 TYPE_4__ ldb ;
 int ldbLog (int ) ;
 int ldbSendLogs () ;
 int sdsfreesplitres (int ,scalar_t__) ;
 int sdsnew (char*) ;
 int serverLog (int ,char*) ;
 int writeToClient (TYPE_1__*,int ) ;

void ldbEndSession(client *c) {

    ldbLog(sdsnew("<endsession>"));
    ldbSendLogs();


    if (ldb.forked) {
        writeToClient(c,0);
        serverLog(LL_WARNING,"Lua debugging session child exiting");
        exitFromChild(0);
    } else {
        serverLog(LL_WARNING,
            "Redis synchronous debugging eval session ended");
    }


    connNonBlock(ldb.conn);
    connSendTimeout(ldb.conn,0);



    c->flags |= CLIENT_CLOSE_AFTER_REPLY;


    sdsfreesplitres(ldb.src,ldb.lines);
    ldb.lines = 0;
    ldb.active = 0;
}
