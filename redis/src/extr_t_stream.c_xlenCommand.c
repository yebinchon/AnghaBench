
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int length; } ;
typedef TYPE_1__ stream ;
struct TYPE_12__ {TYPE_1__* ptr; } ;
typedef TYPE_2__ robj ;
struct TYPE_13__ {int * argv; } ;
typedef TYPE_3__ client ;
struct TYPE_14__ {int czero; } ;


 int OBJ_STREAM ;
 int addReplyLongLong (TYPE_3__*,int ) ;
 scalar_t__ checkType (TYPE_3__*,TYPE_2__*,int ) ;
 TYPE_2__* lookupKeyReadOrReply (TYPE_3__*,int ,int ) ;
 TYPE_5__ shared ;

void xlenCommand(client *c) {
    robj *o;
    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.czero)) == ((void*)0)
        || checkType(c,o,OBJ_STREAM)) return;
    stream *s = o->ptr;
    addReplyLongLong(c,s->length);
}
