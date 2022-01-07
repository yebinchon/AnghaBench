
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char* (* reader ) (int *,int ,size_t*) ;size_t n; char const* p; int data; int * L; } ;
typedef TYPE_1__ ZIO ;


 int char2int (int ) ;
 char* stub1 (int *,int ,size_t*) ;

__attribute__((used)) static int luaZ_fill(ZIO*z){
size_t size;
lua_State*L=z->L;
const char*buff;
buff=z->reader(L,z->data,&size);
if(buff==((void*)0)||size==0)return(-1);
z->n=size-1;
z->p=buff;
return char2int(*(z->p++));
}
