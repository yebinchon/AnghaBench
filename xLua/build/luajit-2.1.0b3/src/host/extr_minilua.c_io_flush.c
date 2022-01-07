
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ fflush (int ) ;
 int getiofile (int *,int) ;
 int pushresult (int *,int,int *) ;

__attribute__((used)) static int io_flush(lua_State*L){
return pushresult(L,fflush(getiofile(L,2))==0,((void*)0));
}
