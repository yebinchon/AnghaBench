
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t ssize_t ;
struct TYPE_13__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_14__ {TYPE_3__* db; int * argv; } ;
typedef TYPE_2__ client ;
struct TYPE_17__ {int dirty; } ;
struct TYPE_16__ {int czero; int cone; } ;
struct TYPE_15__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_STRING ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 scalar_t__ getBitOffsetFromArgument (TYPE_2__*,int ,size_t*,int ,int ) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_2__*,int ,long*,char*) ;
 TYPE_1__* lookupStringForBitCommand (TYPE_2__*,size_t) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 TYPE_6__ server ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_3__*,int ) ;

void setbitCommand(client *c) {
    robj *o;
    char *err = "bit is not an integer or out of range";
    size_t bitoffset;
    ssize_t byte, bit;
    int byteval, bitval;
    long on;

    if (getBitOffsetFromArgument(c,c->argv[2],&bitoffset,0,0) != C_OK)
        return;

    if (getLongFromObjectOrReply(c,c->argv[3],&on,err) != C_OK)
        return;


    if (on & ~1) {
        addReplyError(c,err);
        return;
    }

    if ((o = lookupStringForBitCommand(c,bitoffset)) == ((void*)0)) return;


    byte = bitoffset >> 3;
    byteval = ((uint8_t*)o->ptr)[byte];
    bit = 7 - (bitoffset & 0x7);
    bitval = byteval & (1 << bit);


    byteval &= ~(1 << bit);
    byteval |= ((on & 0x1) << bit);
    ((uint8_t*)o->ptr)[byte] = byteval;
    signalModifiedKey(c->db,c->argv[1]);
    notifyKeyspaceEvent(NOTIFY_STRING,"setbit",c->argv[1],c->db->id);
    server.dirty++;
    addReply(c, bitval ? shared.cone : shared.czero);
}
