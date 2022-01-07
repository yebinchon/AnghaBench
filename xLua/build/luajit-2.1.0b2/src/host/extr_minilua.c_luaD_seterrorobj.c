
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ StkId ;


 int luaS_newliteral (TYPE_1__*,char*) ;
 int setobj (TYPE_1__*,scalar_t__,scalar_t__) ;
 int setsvalue (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static void luaD_seterrorobj(lua_State*L,int errcode,StkId oldtop){
switch(errcode){
case 4:{
setsvalue(L,oldtop,luaS_newliteral(L,"not enough memory"));
break;
}
case 5:{
setsvalue(L,oldtop,luaS_newliteral(L,"error in error handling"));
break;
}
case 3:
case 2:{
setobj(L,oldtop,L->top-1);
break;
}
}
L->top=oldtop+1;
}
