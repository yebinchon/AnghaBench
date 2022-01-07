
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct SParser {char const* name; int buff; int * z; } ;
struct TYPE_7__ {int errfunc; int top; } ;
typedef TYPE_1__ lua_State ;
typedef int ZIO ;


 int f_parser ;
 int luaD_pcall (TYPE_1__*,int ,struct SParser*,int ,int ) ;
 int luaZ_freebuffer (TYPE_1__*,int *) ;
 int luaZ_initbuffer (TYPE_1__*,int *) ;
 int savestack (TYPE_1__*,int ) ;

__attribute__((used)) static int luaD_protectedparser(lua_State*L,ZIO*z,const char*name){
struct SParser p;
int status;
p.z=z;p.name=name;
luaZ_initbuffer(L,&p.buff);
status=luaD_pcall(L,f_parser,&p,savestack(L,L->top),L->errfunc);
luaZ_freebuffer(L,&p.buff);
return status;
}
