
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {int czero; int cone; } ;


 int OBJ_SET_NX ;
 int setGenericCommand (TYPE_1__*,int ,int ,int ,int *,int ,int ,int ) ;
 TYPE_2__ shared ;
 int tryObjectEncoding (int ) ;

void setnxCommand(client *c) {
    c->argv[2] = tryObjectEncoding(c->argv[2]);
    setGenericCommand(c,OBJ_SET_NX,c->argv[1],c->argv[2],((void*)0),0,shared.cone,shared.czero);
}
