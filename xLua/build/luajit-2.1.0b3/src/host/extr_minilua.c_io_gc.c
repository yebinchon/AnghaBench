
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int aux_close (int *) ;
 int ** tofilep (int *) ;

__attribute__((used)) static int io_gc(lua_State*L){
FILE*f=*tofilep(L);
if(f!=((void*)0))
aux_close(L);
return 0;
}
