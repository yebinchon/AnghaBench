
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int robj ;
struct TYPE_9__ {int argc; int * argv; int db; } ;
typedef TYPE_1__ client ;
struct TYPE_10__ {int syntaxerr; } ;


 scalar_t__ C_OK ;
 int LONG_STR_SIZE ;
 int OBJ_STRING ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplyLongLong (TYPE_1__*,long) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,int ,long*,int *) ;
 unsigned char* getObjectReadOnlyString (int *,long*,char*) ;
 int * lookupKeyRead (int ,int ) ;
 long redisBitpos (unsigned char*,long,long) ;
 TYPE_2__ shared ;

void bitposCommand(client *c) {
    robj *o;
    long bit, start, end, strlen;
    unsigned char *p;
    char llbuf[LONG_STR_SIZE];
    int end_given = 0;



    if (getLongFromObjectOrReply(c,c->argv[2],&bit,((void*)0)) != C_OK)
        return;
    if (bit != 0 && bit != 1) {
        addReplyError(c, "The bit argument must be 1 or 0.");
        return;
    }




    if ((o = lookupKeyRead(c->db,c->argv[1])) == ((void*)0)) {
        addReplyLongLong(c, bit ? -1 : 0);
        return;
    }
    if (checkType(c,o,OBJ_STRING)) return;
    p = getObjectReadOnlyString(o,&strlen,llbuf);


    if (c->argc == 4 || c->argc == 5) {
        if (getLongFromObjectOrReply(c,c->argv[3],&start,((void*)0)) != C_OK)
            return;
        if (c->argc == 5) {
            if (getLongFromObjectOrReply(c,c->argv[4],&end,((void*)0)) != C_OK)
                return;
            end_given = 1;
        } else {
            end = strlen-1;
        }

        if (start < 0) start = strlen+start;
        if (end < 0) end = strlen+end;
        if (start < 0) start = 0;
        if (end < 0) end = 0;
        if (end >= strlen) end = strlen-1;
    } else if (c->argc == 3) {

        start = 0;
        end = strlen-1;
    } else {

        addReply(c,shared.syntaxerr);
        return;
    }



    if (start > end) {
        addReplyLongLong(c, -1);
    } else {
        long bytes = end-start+1;
        long pos = redisBitpos(p+start,bytes,bit);
        if (end_given && bit == 0 && pos == bytes*8) {
            addReplyLongLong(c,-1);
            return;
        }
        if (pos != -1) pos += start*8;
        addReplyLongLong(c,pos);
    }
}
