
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int lo; int hi; } ;
struct TYPE_12__ {TYPE_1__ u32; } ;
struct TYPE_11__ {int hash; } ;
struct TYPE_10__ {int t; } ;
typedef TYPE_2__ IRIns ;


 int HASH_BIAS ;
 int IRT_FALSE ;
 int hashrot (int,int) ;
 int ir_kgc (TYPE_2__*) ;
 TYPE_5__* ir_knum (TYPE_2__*) ;
 TYPE_3__* ir_kstr (TYPE_2__*) ;
 int irt_isgcv (int ) ;
 int irt_isnil (int ) ;
 scalar_t__ irt_isnum (int ) ;
 scalar_t__ irt_ispri (int ) ;
 scalar_t__ irt_isstr (int ) ;
 int irt_type (int ) ;
 int lua_assert (int) ;
 int u32ptr (int ) ;

__attribute__((used)) static uint32_t ir_khash(IRIns *ir)
{
  uint32_t lo, hi;
  if (irt_isstr(ir->t)) {
    return ir_kstr(ir)->hash;
  } else if (irt_isnum(ir->t)) {
    lo = ir_knum(ir)->u32.lo;
    hi = ir_knum(ir)->u32.hi << 1;
  } else if (irt_ispri(ir->t)) {
    lua_assert(!irt_isnil(ir->t));
    return irt_type(ir->t)-IRT_FALSE;
  } else {
    lua_assert(irt_isgcv(ir->t));
    lo = u32ptr(ir_kgc(ir));
    hi = lo + HASH_BIAS;
  }
  return hashrot(lo, hi);
}
