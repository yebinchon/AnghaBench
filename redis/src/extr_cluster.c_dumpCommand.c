
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int robj ;
struct TYPE_9__ {int ptr; } ;
struct TYPE_10__ {TYPE_1__ buffer; } ;
struct TYPE_11__ {TYPE_2__ io; } ;
typedef TYPE_3__ rio ;
struct TYPE_12__ {int * argv; int db; } ;
typedef TYPE_4__ client ;


 int addReplyBulkSds (TYPE_4__*,int ) ;
 int addReplyNull (TYPE_4__*) ;
 int createDumpPayload (TYPE_3__*,int *,int ) ;
 int * lookupKeyRead (int ,int ) ;

void dumpCommand(client *c) {
    robj *o;
    rio payload;


    if ((o = lookupKeyRead(c->db,c->argv[1])) == ((void*)0)) {
        addReplyNull(c);
        return;
    }


    createDumpPayload(&payload,o,c->argv[1]);


    addReplyBulkSds(c,payload.io.buffer.ptr);
    return;
}
