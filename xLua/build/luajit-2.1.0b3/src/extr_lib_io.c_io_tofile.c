
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int * fp; } ;
typedef TYPE_1__ IOFileUD ;


 int LJ_ERR_IOCLFL ;
 TYPE_1__* io_tofilep (int *) ;
 int lj_err_caller (int *,int ) ;

__attribute__((used)) static IOFileUD *io_tofile(lua_State *L)
{
  IOFileUD *iof = io_tofilep(L);
  if (iof->fp == ((void*)0))
    lj_err_caller(L, LJ_ERR_IOCLFL);
  return iof;
}
