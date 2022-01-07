
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
struct TYPE_10__ {int argc; int * argv; int db; } ;
typedef TYPE_2__ client ;


 scalar_t__ OBJ_STRING ;
 int addReplyArrayLen (TYPE_2__*,int) ;
 int addReplyBulk (TYPE_2__*,TYPE_1__*) ;
 int addReplyNull (TYPE_2__*) ;
 TYPE_1__* lookupKeyRead (int ,int ) ;

void mgetCommand(client *c) {
    int j;

    addReplyArrayLen(c,c->argc-1);
    for (j = 1; j < c->argc; j++) {
        robj *o = lookupKeyRead(c->db,c->argv[j]);
        if (o == ((void*)0)) {
            addReplyNull(c);
        } else {
            if (o->type != OBJ_STRING) {
                addReplyNull(c);
            } else {
                addReplyBulk(c,o);
            }
        }
    }
}
