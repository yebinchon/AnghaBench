
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
struct TYPE_11__ {size_t resp; int * argv; } ;
typedef TYPE_2__ client ;
struct TYPE_12__ {int wrongtypeerr; int * null; } ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ OBJ_STRING ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyBulk (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* lookupKeyReadOrReply (TYPE_2__*,int ,int ) ;
 TYPE_3__ shared ;

int getGenericCommand(client *c) {
    robj *o;

    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.null[c->resp])) == ((void*)0))
        return C_OK;

    if (o->type != OBJ_STRING) {
        addReply(c,shared.wrongtypeerr);
        return C_ERR;
    } else {
        addReplyBulk(c,o);
        return C_OK;
    }
}
