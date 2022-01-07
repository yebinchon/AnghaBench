
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
struct TYPE_12__ {scalar_t__ argc; int db; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;


 scalar_t__ OBJ_STRING ;
 int addReply (TYPE_2__*,TYPE_1__*) ;
 int addReplyGopherItem (TYPE_2__*,char*,char*,int *,int *,int ) ;
 TYPE_1__* createStringObject (char*,int) ;
 int decrRefCount (TYPE_1__*) ;
 TYPE_1__* lookupKeyRead (int ,TYPE_1__*) ;

void processGopherRequest(client *c) {
    robj *keyname = c->argc == 0 ? createStringObject("/",1) : c->argv[0];
    robj *o = lookupKeyRead(c->db,keyname);


    if (o == ((void*)0) || o->type != OBJ_STRING) {
        char *errstr;
        if (o == ((void*)0))
            errstr = "Error: no content at the specified key";
        else
            errstr = "Error: selected key type is invalid "
                     "for Gopher output";
        addReplyGopherItem(c,"i",errstr,((void*)0),((void*)0),0);
        addReplyGopherItem(c,"i","Redis Gopher server",((void*)0),((void*)0),0);
    } else {
        addReply(c,o);
    }





    if (c->argc == 0) decrRefCount(keyname);
}
