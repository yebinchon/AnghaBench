
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
struct TYPE_12__ {int argc; TYPE_5__** argv; int db; } ;
typedef TYPE_2__ client ;
struct TYPE_14__ {int ptr; } ;
struct TYPE_13__ {int wrongtypeerr; } ;


 scalar_t__ OBJ_HASH ;
 int addHashFieldToReply (TYPE_2__*,TYPE_1__*,int ) ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyArrayLen (TYPE_2__*,int) ;
 TYPE_1__* lookupKeyRead (int ,TYPE_5__*) ;
 TYPE_3__ shared ;

void hmgetCommand(client *c) {
    robj *o;
    int i;



    o = lookupKeyRead(c->db, c->argv[1]);
    if (o != ((void*)0) && o->type != OBJ_HASH) {
        addReply(c, shared.wrongtypeerr);
        return;
    }

    addReplyArrayLen(c, c->argc-2);
    for (i = 2; i < c->argc; i++) {
        addHashFieldToReply(c, o, c->argv[i]->ptr);
    }
}
