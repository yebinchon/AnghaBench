
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_11__ {TYPE_1__* name; } ;
typedef TYPE_2__ client ;
struct TYPE_12__ {int ok; } ;


 int C_ERR ;
 int C_OK ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int decrRefCount (TYPE_1__*) ;
 int incrRefCount (TYPE_1__*) ;
 int sdslen (char*) ;
 TYPE_3__ shared ;

int clientSetNameOrReply(client *c, robj *name) {
    int len = sdslen(name->ptr);
    char *p = name->ptr;



    if (len == 0) {
        if (c->name) decrRefCount(c->name);
        c->name = ((void*)0);
        addReply(c,shared.ok);
        return C_OK;
    }




    for (int j = 0; j < len; j++) {
        if (p[j] < '!' || p[j] > '~') {
            addReplyError(c,
                "Client names cannot contain spaces, "
                "newlines or special characters.");
            return C_ERR;
        }
    }
    if (c->name) decrRefCount(c->name);
    c->name = name;
    incrRefCount(name);
    return C_OK;
}
