
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
typedef int llbuf ;
struct TYPE_13__ {int * argv; } ;
typedef TYPE_2__ client ;
struct TYPE_14__ {int czero; int cone; } ;


 scalar_t__ C_OK ;
 int OBJ_STRING ;
 int addReply (TYPE_2__*,int ) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ getBitOffsetFromArgument (TYPE_2__*,int ,size_t*,int ,int ) ;
 scalar_t__ ll2string (char*,int,long) ;
 TYPE_1__* lookupKeyReadOrReply (TYPE_2__*,int ,int ) ;
 scalar_t__ sdsEncodedObject (TYPE_1__*) ;
 size_t sdslen (scalar_t__) ;
 TYPE_3__ shared ;

void getbitCommand(client *c) {
    robj *o;
    char llbuf[32];
    size_t bitoffset;
    size_t byte, bit;
    size_t bitval = 0;

    if (getBitOffsetFromArgument(c,c->argv[2],&bitoffset,0,0) != C_OK)
        return;

    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.czero)) == ((void*)0) ||
        checkType(c,o,OBJ_STRING)) return;

    byte = bitoffset >> 3;
    bit = 7 - (bitoffset & 0x7);
    if (sdsEncodedObject(o)) {
        if (byte < sdslen(o->ptr))
            bitval = ((uint8_t*)o->ptr)[byte] & (1 << bit);
    } else {
        if (byte < (size_t)ll2string(llbuf,sizeof(llbuf),(long)o->ptr))
            bitval = llbuf[byte] & (1 << bit);
    }

    addReply(c, bitval ? shared.cone : shared.czero);
}
