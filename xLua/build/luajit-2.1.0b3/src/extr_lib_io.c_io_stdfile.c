
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptrdiff_t ;
typedef int lua_State ;
struct TYPE_3__ {int * fp; } ;
typedef TYPE_1__ IOFileUD ;
typedef int FILE ;


 TYPE_1__* IOSTDF_IOF (int *,int ) ;
 int LJ_ERR_IOSTDCL ;
 int lj_err_caller (int *,int ) ;

__attribute__((used)) static FILE *io_stdfile(lua_State *L, ptrdiff_t id)
{
  IOFileUD *iof = IOSTDF_IOF(L, id);
  if (iof->fp == ((void*)0))
    lj_err_caller(L, LJ_ERR_IOSTDCL);
  return iof->fp;
}
