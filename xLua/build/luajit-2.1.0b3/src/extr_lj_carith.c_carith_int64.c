
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_8__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int int64_t ;
struct TYPE_10__ {int info; int size; } ;
struct TYPE_9__ {int * p; TYPE_5__** ct; } ;
typedef int MMS ;
typedef int GCcdata ;
typedef int CTypeID ;
typedef int CType ;
typedef int CTState ;
typedef TYPE_2__ CDArith ;


 int CTF_UNSIGNED ;
 int CTID_INT64 ;
 int CTID_UINT64 ;
 scalar_t__ cdataptr (int *) ;
 int * ctype_get (int *,int ) ;
 scalar_t__ ctype_isnum (int) ;
 int lj_carith_divi64 (int ,int ) ;
 scalar_t__ lj_carith_divu64 (scalar_t__,scalar_t__) ;
 int lj_carith_modi64 (int ,int ) ;
 scalar_t__ lj_carith_modu64 (scalar_t__,scalar_t__) ;
 int lj_carith_powi64 (int ,int ) ;
 scalar_t__ lj_carith_powu64 (scalar_t__,scalar_t__) ;
 int lj_cconv_ct_ct (int *,int *,TYPE_5__*,int *,int ,int ) ;
 int * lj_cdata_new (int *,int ,int) ;
 int lj_gc_check (TYPE_1__*) ;
 int lua_assert (int ) ;
 int setboolV (scalar_t__,int) ;
 int setcdataV (TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static int carith_int64(lua_State *L, CTState *cts, CDArith *ca, MMS mm)
{
  if (ctype_isnum(ca->ct[0]->info) && ca->ct[0]->size <= 8 &&
      ctype_isnum(ca->ct[1]->info) && ca->ct[1]->size <= 8) {
    CTypeID id = (((ca->ct[0]->info & CTF_UNSIGNED) && ca->ct[0]->size == 8) ||
    ((ca->ct[1]->info & CTF_UNSIGNED) && ca->ct[1]->size == 8)) ?
   CTID_UINT64 : CTID_INT64;
    CType *ct = ctype_get(cts, id);
    GCcdata *cd;
    uint64_t u0, u1, *up;
    lj_cconv_ct_ct(cts, ct, ca->ct[0], (uint8_t *)&u0, ca->p[0], 0);
    if (mm != 128)
      lj_cconv_ct_ct(cts, ct, ca->ct[1], (uint8_t *)&u1, ca->p[1], 0);
    switch (mm) {
    case 135:
      setboolV(L->top-1, (u0 == u1));
      return 1;
    case 133:
      setboolV(L->top-1,
        id == CTID_INT64 ? ((int64_t)u0 < (int64_t)u1) : (u0 < u1));
      return 1;
    case 134:
      setboolV(L->top-1,
        id == CTID_INT64 ? ((int64_t)u0 <= (int64_t)u1) : (u0 <= u1));
      return 1;
    default: break;
    }
    cd = lj_cdata_new(cts, id, 8);
    up = (uint64_t *)cdataptr(cd);
    setcdataV(L, L->top-1, cd);
    switch (mm) {
    case 137: *up = u0 + u1; break;
    case 129: *up = u0 - u1; break;
    case 131: *up = u0 * u1; break;
    case 136:
      if (id == CTID_INT64)
 *up = (uint64_t)lj_carith_divi64((int64_t)u0, (int64_t)u1);
      else
 *up = lj_carith_divu64(u0, u1);
      break;
    case 132:
      if (id == CTID_INT64)
 *up = (uint64_t)lj_carith_modi64((int64_t)u0, (int64_t)u1);
      else
 *up = lj_carith_modu64(u0, u1);
      break;
    case 130:
      if (id == CTID_INT64)
 *up = (uint64_t)lj_carith_powi64((int64_t)u0, (int64_t)u1);
      else
 *up = lj_carith_powu64(u0, u1);
      break;
    case 128: *up = (uint64_t)-(int64_t)u0; break;
    default: lua_assert(0); break;
    }
    lj_gc_check(L);
    return 1;
  }
  return 0;
}
