
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int robj ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ client ;


 int addReplyBulk (TYPE_1__*,int *) ;
 int addReplyNull (TYPE_1__*) ;
 int * dbRandomKey (int ) ;
 int decrRefCount (int *) ;

void randomkeyCommand(client *c) {
    robj *key;

    if ((key = dbRandomKey(c->db)) == ((void*)0)) {
        addReplyNull(c);
        return;
    }

    addReplyBulk(c,key);
    decrRefCount(key);
}
