
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int argc; int * argv; int db; } ;
typedef TYPE_1__ client ;


 int addReplyLongLong (TYPE_1__*,int) ;
 int * lookupKeyRead (int ,int ) ;

void touchCommand(client *c) {
    int touched = 0;
    for (int j = 1; j < c->argc; j++)
        if (lookupKeyRead(c->db,c->argv[j]) != ((void*)0)) touched++;
    addReplyLongLong(c,touched);
}
