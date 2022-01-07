
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* namewhat; char* what; int lastlinedefined; int linedefined; int currentline; char* source; scalar_t__ nups; int short_src; } ;
typedef TYPE_1__ lua_Debug ;


 int luaO_chunkid (int ,char*,int) ;

__attribute__((used)) static void info_tailcall(lua_Debug*ar){
ar->name=ar->namewhat="";
ar->what="tail";
ar->lastlinedefined=ar->linedefined=ar->currentline=-1;
ar->source="=(tail call)";
luaO_chunkid(ar->short_src,ar->source,60);
ar->nups=0;
}
