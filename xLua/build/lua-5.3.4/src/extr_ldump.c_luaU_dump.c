
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int lua_Writer ;
typedef int lua_State ;
struct TYPE_9__ {int strip; int status; void* data; int writer; int * L; } ;
struct TYPE_8__ {int sizeupvalues; } ;
typedef TYPE_1__ Proto ;
typedef TYPE_2__ DumpState ;


 int DumpByte (int ,TYPE_2__*) ;
 int DumpFunction (TYPE_1__ const*,int *,TYPE_2__*) ;
 int DumpHeader (TYPE_2__*) ;

int luaU_dump(lua_State *L, const Proto *f, lua_Writer w, void *data,
              int strip) {
  DumpState D;
  D.L = L;
  D.writer = w;
  D.data = data;
  D.strip = strip;
  D.status = 0;
  DumpHeader(&D);
  DumpByte(f->sizeupvalues, &D);
  DumpFunction(f, ((void*)0), &D);
  return D.status;
}
