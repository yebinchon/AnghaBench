
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int robj ;
struct TYPE_4__ {int * argv; int db; } ;
typedef TYPE_1__ client ;


 int LOOKUP_NOTOUCH ;
 int addReplyStatus (TYPE_1__*,int ) ;
 int getObjectTypeName (int *) ;
 int * lookupKeyReadWithFlags (int ,int ,int ) ;

void typeCommand(client *c) {
    robj *o;
    o = lookupKeyReadWithFlags(c->db,c->argv[1],LOOKUP_NOTOUCH);
    addReplyStatus(c, getObjectTypeName(o));
}
