
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int lua_State ;
typedef scalar_t__ lua_Number ;
typedef scalar_t__ int32_t ;
struct TYPE_21__ {int hi; scalar_t__ lo; } ;
struct TYPE_22__ {TYPE_1__ u32; } ;
typedef TYPE_2__ cTValue ;
struct TYPE_24__ {scalar_t__ asize; int node; } ;
struct TYPE_23__ {int key; } ;
typedef TYPE_2__ TValue ;
typedef TYPE_4__ Node ;
typedef TYPE_5__ GCtab ;


 int LJ_ERR_NEXTIDX ;
 TYPE_4__* hashkey (TYPE_5__*,TYPE_2__*) ;
 scalar_t__ intV (TYPE_2__*) ;
 int lj_err_msg (int *,int ) ;
 scalar_t__ lj_num2int (scalar_t__) ;
 scalar_t__ lj_obj_equal (int *,TYPE_2__*) ;
 TYPE_4__* nextnode (TYPE_4__*) ;
 TYPE_4__* noderef (int ) ;
 scalar_t__ numV (TYPE_2__*) ;
 int setnumV (TYPE_2__*,scalar_t__) ;
 scalar_t__ tvisint (TYPE_2__*) ;
 int tvisnil (TYPE_2__*) ;
 scalar_t__ tvisnum (TYPE_2__*) ;

__attribute__((used)) static uint32_t keyindex(lua_State *L, GCtab *t, cTValue *key)
{
  TValue tmp;
  if (tvisint(key)) {
    int32_t k = intV(key);
    if ((uint32_t)k < t->asize)
      return (uint32_t)k;
    setnumV(&tmp, (lua_Number)k);
    key = &tmp;
  } else if (tvisnum(key)) {
    lua_Number nk = numV(key);
    int32_t k = lj_num2int(nk);
    if ((uint32_t)k < t->asize && nk == (lua_Number)k)
      return (uint32_t)k;
  }
  if (!tvisnil(key)) {
    Node *n = hashkey(t, key);
    do {
      if (lj_obj_equal(&n->key, key))
 return t->asize + (uint32_t)(n - noderef(t->node));

    } while ((n = nextnode(n)));
    if (key->u32.hi == 0xfffe7fff)
      return key->u32.lo - 1;
    lj_err_msg(L, LJ_ERR_NEXTIDX);
    return 0;
  }
  return ~0u;
}
