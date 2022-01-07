
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef long long uint64_t ;
struct bitfieldOp {size_t offset; long long i64; int opcode; int owtype; int bits; int sign; } ;
struct TYPE_28__ {unsigned char* ptr; } ;
typedef TYPE_1__ robj ;
typedef long long int64_t ;
struct TYPE_29__ {int argc; TYPE_3__* db; TYPE_4__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_33__ {int dirty; } ;
struct TYPE_32__ {int syntaxerr; } ;
struct TYPE_31__ {char* ptr; } ;
struct TYPE_30__ {int id; } ;


 int BFOVERFLOW_FAIL ;
 int BFOVERFLOW_SAT ;
 int BFOVERFLOW_WRAP ;
 int BITFIELDOP_GET ;
 int BITFIELDOP_INCRBY ;
 int BITFIELDOP_SET ;
 scalar_t__ C_OK ;
 int LONG_STR_SIZE ;
 int NOTIFY_STRING ;
 int OBJ_STRING ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyArrayLen (TYPE_2__*,int) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyLongLong (TYPE_2__*,long long) ;
 int addReplyNull (TYPE_2__*) ;
 int checkSignedBitfieldOverflow (long long,long long,int,int,long long*) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 int checkUnsignedBitfieldOverflow (long long,long long,int,int,long long*) ;
 scalar_t__ getBitOffsetFromArgument (TYPE_2__*,TYPE_4__*,size_t*,int,int) ;
 scalar_t__ getBitfieldTypeFromArgument (TYPE_2__*,TYPE_4__*,int*,int*) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_2__*,TYPE_4__*,long long*,int *) ;
 unsigned char* getObjectReadOnlyString (TYPE_1__*,long*,char*) ;
 long long getSignedBitfield (unsigned char*,size_t,int) ;
 long long getUnsignedBitfield (unsigned char*,size_t,int) ;
 TYPE_1__* lookupKeyRead (TYPE_3__*,TYPE_4__*) ;
 TYPE_1__* lookupStringForBitCommand (TYPE_2__*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_4__*,int ) ;
 TYPE_6__ server ;
 int setSignedBitfield (unsigned char*,size_t,int,long long) ;
 int setUnsignedBitfield (unsigned char*,size_t,int,long long) ;
 TYPE_5__ shared ;
 int signalModifiedKey (TYPE_3__*,TYPE_4__*) ;
 int strcasecmp (char*,char*) ;
 int zfree (struct bitfieldOp*) ;
 struct bitfieldOp* zrealloc (struct bitfieldOp*,int) ;

void bitfieldCommand(client *c) {
    robj *o;
    size_t bitoffset;
    int j, numops = 0, changes = 0;
    struct bitfieldOp *ops = ((void*)0);
    int owtype = BFOVERFLOW_WRAP;
    int readonly = 1;
    size_t highest_write_offset = 0;

    for (j = 2; j < c->argc; j++) {
        int remargs = c->argc-j-1;
        char *subcmd = c->argv[j]->ptr;
        int opcode;
        long long i64 = 0;
        int sign = 0;
        int bits = 0;

        if (!strcasecmp(subcmd,"get") && remargs >= 2)
            opcode = BITFIELDOP_GET;
        else if (!strcasecmp(subcmd,"set") && remargs >= 3)
            opcode = BITFIELDOP_SET;
        else if (!strcasecmp(subcmd,"incrby") && remargs >= 3)
            opcode = BITFIELDOP_INCRBY;
        else if (!strcasecmp(subcmd,"overflow") && remargs >= 1) {
            char *owtypename = c->argv[j+1]->ptr;
            j++;
            if (!strcasecmp(owtypename,"wrap"))
                owtype = BFOVERFLOW_WRAP;
            else if (!strcasecmp(owtypename,"sat"))
                owtype = BFOVERFLOW_SAT;
            else if (!strcasecmp(owtypename,"fail"))
                owtype = BFOVERFLOW_FAIL;
            else {
                addReplyError(c,"Invalid OVERFLOW type specified");
                zfree(ops);
                return;
            }
            continue;
        } else {
            addReply(c,shared.syntaxerr);
            zfree(ops);
            return;
        }


        if (getBitfieldTypeFromArgument(c,c->argv[j+1],&sign,&bits) != C_OK) {
            zfree(ops);
            return;
        }

        if (getBitOffsetFromArgument(c,c->argv[j+2],&bitoffset,1,bits) != C_OK){
            zfree(ops);
            return;
        }

        if (opcode != BITFIELDOP_GET) {
            readonly = 0;
            if (highest_write_offset < bitoffset + bits - 1)
                highest_write_offset = bitoffset + bits - 1;

            if (getLongLongFromObjectOrReply(c,c->argv[j+3],&i64,((void*)0)) != C_OK){
                zfree(ops);
                return;
            }
        }


        ops = zrealloc(ops,sizeof(*ops)*(numops+1));
        ops[numops].offset = bitoffset;
        ops[numops].i64 = i64;
        ops[numops].opcode = opcode;
        ops[numops].owtype = owtype;
        ops[numops].bits = bits;
        ops[numops].sign = sign;
        numops++;

        j += 3 - (opcode == BITFIELDOP_GET);
    }

    if (readonly) {


        o = lookupKeyRead(c->db,c->argv[1]);
        if (o != ((void*)0) && checkType(c,o,OBJ_STRING)) {
            zfree(ops);
            return;
        }
    } else {


        if ((o = lookupStringForBitCommand(c,
            highest_write_offset)) == ((void*)0)) {
            zfree(ops);
            return;
        }
    }

    addReplyArrayLen(c,numops);


    for (j = 0; j < numops; j++) {
        struct bitfieldOp *thisop = ops+j;


        if (thisop->opcode == BITFIELDOP_SET ||
            thisop->opcode == BITFIELDOP_INCRBY)
        {







            if (thisop->sign) {
                int64_t oldval, newval, wrapped, retval;
                int overflow;

                oldval = getSignedBitfield(o->ptr,thisop->offset,
                        thisop->bits);

                if (thisop->opcode == BITFIELDOP_INCRBY) {
                    newval = oldval + thisop->i64;
                    overflow = checkSignedBitfieldOverflow(oldval,
                            thisop->i64,thisop->bits,thisop->owtype,&wrapped);
                    if (overflow) newval = wrapped;
                    retval = newval;
                } else {
                    newval = thisop->i64;
                    overflow = checkSignedBitfieldOverflow(newval,
                            0,thisop->bits,thisop->owtype,&wrapped);
                    if (overflow) newval = wrapped;
                    retval = oldval;
                }



                if (!(overflow && thisop->owtype == BFOVERFLOW_FAIL)) {
                    addReplyLongLong(c,retval);
                    setSignedBitfield(o->ptr,thisop->offset,
                                      thisop->bits,newval);
                } else {
                    addReplyNull(c);
                }
            } else {
                uint64_t oldval, newval, wrapped, retval;
                int overflow;

                oldval = getUnsignedBitfield(o->ptr,thisop->offset,
                        thisop->bits);

                if (thisop->opcode == BITFIELDOP_INCRBY) {
                    newval = oldval + thisop->i64;
                    overflow = checkUnsignedBitfieldOverflow(oldval,
                            thisop->i64,thisop->bits,thisop->owtype,&wrapped);
                    if (overflow) newval = wrapped;
                    retval = newval;
                } else {
                    newval = thisop->i64;
                    overflow = checkUnsignedBitfieldOverflow(newval,
                            0,thisop->bits,thisop->owtype,&wrapped);
                    if (overflow) newval = wrapped;
                    retval = oldval;
                }


                if (!(overflow && thisop->owtype == BFOVERFLOW_FAIL)) {
                    addReplyLongLong(c,retval);
                    setUnsignedBitfield(o->ptr,thisop->offset,
                                        thisop->bits,newval);
                } else {
                    addReplyNull(c);
                }
            }
            changes++;
        } else {

            unsigned char buf[9];
            long strlen = 0;
            unsigned char *src = ((void*)0);
            char llbuf[LONG_STR_SIZE];

            if (o != ((void*)0))
                src = getObjectReadOnlyString(o,&strlen,llbuf);





            memset(buf,0,9);
            int i;
            size_t byte = thisop->offset >> 3;
            for (i = 0; i < 9; i++) {
                if (src == ((void*)0) || i+byte >= (size_t)strlen) break;
                buf[i] = src[i+byte];
            }



            if (thisop->sign) {
                int64_t val = getSignedBitfield(buf,thisop->offset-(byte*8),
                                            thisop->bits);
                addReplyLongLong(c,val);
            } else {
                uint64_t val = getUnsignedBitfield(buf,thisop->offset-(byte*8),
                                            thisop->bits);
                addReplyLongLong(c,val);
            }
        }
    }

    if (changes) {
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_STRING,"setbit",c->argv[1],c->db->id);
        server.dirty += changes;
    }
    zfree(ops);
}
