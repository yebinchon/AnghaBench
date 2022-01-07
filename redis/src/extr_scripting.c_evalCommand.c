
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ client ;


 int CLIENT_LUA_DEBUG ;
 int evalGenericCommand (TYPE_1__*,int ) ;
 int evalGenericCommandWithDebugging (TYPE_1__*,int ) ;

void evalCommand(client *c) {
    if (!(c->flags & CLIENT_LUA_DEBUG))
        evalGenericCommand(c,0);
    else
        evalGenericCommandWithDebugging(c,0);
}
