
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sval; } ;
struct TYPE_6__ {scalar_t__ k; TYPE_1__ u; } ;
typedef int FuncState ;
typedef TYPE_2__ ExpDesc ;
typedef int BCReg ;


 int LJ_TSTR ;
 scalar_t__ VGLOBAL ;
 int const_gc (int *,int ,int ) ;
 scalar_t__ expr_isstrk (TYPE_2__*) ;
 int lua_assert (int) ;
 int obj2gco (int ) ;

__attribute__((used)) static BCReg const_str(FuncState *fs, ExpDesc *e)
{
  lua_assert(expr_isstrk(e) || e->k == VGLOBAL);
  return const_gc(fs, obj2gco(e->u.sval), LJ_TSTR);
}
