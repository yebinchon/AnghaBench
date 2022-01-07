
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * argv; } ;
typedef TYPE_1__ client ;


 int OBJ_SET_NO_FLAGS ;
 int UNIT_MILLISECONDS ;
 int setGenericCommand (TYPE_1__*,int ,int ,int ,int ,int ,int *,int *) ;
 int tryObjectEncoding (int ) ;

void psetexCommand(client *c) {
    c->argv[3] = tryObjectEncoding(c->argv[3]);
    setGenericCommand(c,OBJ_SET_NO_FLAGS,c->argv[1],c->argv[3],c->argv[2],UNIT_MILLISECONDS,((void*)0),((void*)0));
}
