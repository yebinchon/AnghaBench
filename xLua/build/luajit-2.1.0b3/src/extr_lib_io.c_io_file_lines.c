
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ base; scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;


 int LJ_ERR_UNPACK ;
 int LJ_MAX_UPVAL ;
 int io_file_iter ;
 int lj_err_caller (TYPE_1__*,int ) ;
 int lua_pushcclosure (TYPE_1__*,int ,int) ;

__attribute__((used)) static int io_file_lines(lua_State *L)
{
  int n = (int)(L->top - L->base);
  if (n > LJ_MAX_UPVAL)
    lj_err_caller(L, LJ_ERR_UNPACK);
  lua_pushcclosure(L, io_file_iter, n);
  return 1;
}
