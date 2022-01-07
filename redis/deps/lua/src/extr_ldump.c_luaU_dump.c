
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_Writer ;
typedef int lua_State ;
struct TYPE_4__ {int strip; int status; void* data; int writer; int * L; } ;
typedef int Proto ;
typedef TYPE_1__ DumpState ;


 int DumpFunction (int const*,int *,TYPE_1__*) ;
 int DumpHeader (TYPE_1__*) ;

int luaU_dump (lua_State* L, const Proto* f, lua_Writer w, void* data, int strip)
{
 DumpState D;
 D.L=L;
 D.writer=w;
 D.data=data;
 D.strip=strip;
 D.status=0;
 DumpHeader(&D);
 DumpFunction(f,((void*)0),&D);
 return D.status;
}
