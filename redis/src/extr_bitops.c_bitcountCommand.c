
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int robj ;
struct TYPE_9__ {int argc; int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_10__ {int czero; int syntaxerr; } ;


 scalar_t__ C_OK ;
 int LONG_STR_SIZE ;
 int OBJ_STRING ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyLongLong (TYPE_1__*,int ) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,int ,long*,int *) ;
 unsigned char* getObjectReadOnlyString (int *,long*,char*) ;
 int * lookupKeyReadOrReply (TYPE_1__*,int ,int ) ;
 int redisPopcount (unsigned char*,long) ;
 TYPE_2__ shared ;

void bitcountCommand(client *c) {
    robj *o;
    long start, end, strlen;
    unsigned char *p;
    char llbuf[LONG_STR_SIZE];


    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.czero)) == ((void*)0) ||
        checkType(c,o,OBJ_STRING)) return;
    p = getObjectReadOnlyString(o,&strlen,llbuf);


    if (c->argc == 4) {
        if (getLongFromObjectOrReply(c,c->argv[2],&start,((void*)0)) != C_OK)
            return;
        if (getLongFromObjectOrReply(c,c->argv[3],&end,((void*)0)) != C_OK)
            return;

        if (start < 0 && end < 0 && start > end) {
            addReply(c,shared.czero);
            return;
        }
        if (start < 0) start = strlen+start;
        if (end < 0) end = strlen+end;
        if (start < 0) start = 0;
        if (end < 0) end = 0;
        if (end >= strlen) end = strlen-1;
    } else if (c->argc == 2) {

        start = 0;
        end = strlen-1;
    } else {

        addReply(c,shared.syntaxerr);
        return;
    }



    if (start > end) {
        addReply(c,shared.czero);
    } else {
        long bytes = end-start+1;

        addReplyLongLong(c,redisPopcount(p+start,bytes));
    }
}
