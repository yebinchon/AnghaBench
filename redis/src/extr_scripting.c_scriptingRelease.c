
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lua; scalar_t__ lua_scripts_mem; int lua_scripts; } ;


 int dictRelease (int ) ;
 int lua_close (int ) ;
 TYPE_1__ server ;

void scriptingRelease(void) {
    dictRelease(server.lua_scripts);
    server.lua_scripts_mem = 0;
    lua_close(server.lua);
}
