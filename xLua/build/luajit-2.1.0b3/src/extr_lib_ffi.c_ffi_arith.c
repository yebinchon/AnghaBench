
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int ffid; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
typedef int MMS ;


 scalar_t__ FF_ffi_meta___eq ;
 scalar_t__ MM_eq ;
 TYPE_2__* curr_func (int *) ;
 int lj_carith_op (int *,int ) ;

__attribute__((used)) static int ffi_arith(lua_State *L)
{
  MMS mm = (MMS)(curr_func(L)->c.ffid - (int)FF_ffi_meta___eq + (int)MM_eq);
  return lj_carith_op(L, mm);
}
