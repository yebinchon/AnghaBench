
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_7__ {int source; } ;
typedef int CallInfo ;


 int currentline (TYPE_1__*,int *) ;
 TYPE_3__* getluaproto (int *) ;
 int getstr (int ) ;
 scalar_t__ isLua (int *) ;
 int luaO_chunkid (char*,int ,int) ;
 int luaO_pushfstring (TYPE_1__*,char*,char*,int,char const*) ;

__attribute__((used)) static void addinfo(lua_State*L,const char*msg){
CallInfo*ci=L->ci;
if(isLua(ci)){
char buff[60];
int line=currentline(L,ci);
luaO_chunkid(buff,getstr(getluaproto(ci)->source),60);
luaO_pushfstring(L,"%s:%d: %s",buff,line,msg);
}
}
