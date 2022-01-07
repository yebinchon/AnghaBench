
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int g_write (int *,int ,int) ;
 int getiofile (int *,int) ;

__attribute__((used)) static int io_write(lua_State*L){
return g_write(L,getiofile(L,2),1);
}
