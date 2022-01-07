
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {char* source; int linedefined; int lastlinedefined; char* what; int short_src; } ;
typedef TYPE_4__ lua_Debug ;
struct TYPE_10__ {TYPE_2__* p; } ;
struct TYPE_8__ {scalar_t__ isC; } ;
struct TYPE_12__ {TYPE_3__ l; TYPE_1__ c; } ;
struct TYPE_9__ {int linedefined; int lastlinedefined; int source; } ;
typedef TYPE_5__ Closure ;


 char* getstr (int ) ;
 int luaO_chunkid (int ,char*,int) ;

__attribute__((used)) static void funcinfo(lua_Debug*ar,Closure*cl){
if(cl->c.isC){
ar->source="=[C]";
ar->linedefined=-1;
ar->lastlinedefined=-1;
ar->what="C";
}
else{
ar->source=getstr(cl->l.p->source);
ar->linedefined=cl->l.p->linedefined;
ar->lastlinedefined=cl->l.p->lastlinedefined;
ar->what=(ar->linedefined==0)?"main":"Lua";
}
luaO_chunkid(ar->short_src,ar->source,60);
}
