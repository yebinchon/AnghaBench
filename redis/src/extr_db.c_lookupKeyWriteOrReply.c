
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int robj ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ client ;


 int addReply (TYPE_1__*,int *) ;
 int * lookupKeyWrite (int ,int *) ;

robj *lookupKeyWriteOrReply(client *c, robj *key, robj *reply) {
    robj *o = lookupKeyWrite(c->db, key);
    if (!o) addReply(c,reply);
    return o;
}
