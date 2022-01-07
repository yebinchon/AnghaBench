
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sds ;
struct TYPE_5__ {int value; } ;
typedef TYPE_1__ listNode ;
struct TYPE_6__ {int conn; int logs; } ;


 int connWrite (int ,int ,int ) ;
 TYPE_4__ ldb ;
 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listFirst (int ) ;
 scalar_t__ listLength (int ) ;
 int sdscatfmt (int ,char*,int) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatsds (int ,int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 int sdsmapchars (int ,char*,char*,int) ;

void ldbSendLogs(void) {
    sds proto = sdsempty();
    proto = sdscatfmt(proto,"*%i\r\n", (int)listLength(ldb.logs));
    while(listLength(ldb.logs)) {
        listNode *ln = listFirst(ldb.logs);
        proto = sdscatlen(proto,"+",1);
        sdsmapchars(ln->value,"\r\n","  ",2);
        proto = sdscatsds(proto,ln->value);
        proto = sdscatlen(proto,"\r\n",2);
        listDelNode(ldb.logs,ln);
    }
    if (connWrite(ldb.conn,proto,sdslen(proto)) == -1) {



    }
    sdsfree(proto);
}
