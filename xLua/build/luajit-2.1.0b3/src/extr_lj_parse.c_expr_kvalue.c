
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int sval; } ;
struct TYPE_6__ {scalar_t__ k; TYPE_1__ u; } ;
typedef int TValue ;
typedef TYPE_2__ ExpDesc ;


 int LJ_TSTR ;
 scalar_t__ VKSTR ;
 scalar_t__ VKTRUE ;
 int * expr_numtv (TYPE_2__*) ;
 int lua_assert (int ) ;
 int obj2gco (int ) ;
 int setgcVraw (int *,int ,int ) ;
 int setpriV (int *,int ) ;
 int tvisnumber (int *) ;

__attribute__((used)) static void expr_kvalue(TValue *v, ExpDesc *e)
{
  if (e->k <= VKTRUE) {
    setpriV(v, ~(uint32_t)e->k);
  } else if (e->k == VKSTR) {
    setgcVraw(v, obj2gco(e->u.sval), LJ_TSTR);
  } else {
    lua_assert(tvisnumber(expr_numtv(e)));
    *v = *expr_numtv(e);
  }
}
