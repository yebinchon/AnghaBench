
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ lua_Number ;
typedef scalar_t__ int32_t ;
typedef int cTValue ;
struct TYPE_5__ {int val; int key; } ;
typedef TYPE_1__ Node ;
typedef int GCtab ;


 TYPE_1__* hashkey (int *,int *) ;
 scalar_t__ intV (int *) ;
 scalar_t__ lj_num2int (scalar_t__) ;
 scalar_t__ lj_obj_equal (int *,int *) ;
 int * lj_tab_getint (int *,scalar_t__) ;
 int * lj_tab_getstr (int *,int ) ;
 TYPE_1__* nextnode (TYPE_1__*) ;
 int * niltv (int *) ;
 scalar_t__ numV (int *) ;
 int strV (int *) ;
 scalar_t__ tvisint (int *) ;
 int tvisnil (int *) ;
 scalar_t__ tvisnum (int *) ;
 scalar_t__ tvisstr (int *) ;

cTValue *lj_tab_get(lua_State *L, GCtab *t, cTValue *key)
{
  if (tvisstr(key)) {
    cTValue *tv = lj_tab_getstr(t, strV(key));
    if (tv)
      return tv;
  } else if (tvisint(key)) {
    cTValue *tv = lj_tab_getint(t, intV(key));
    if (tv)
      return tv;
  } else if (tvisnum(key)) {
    lua_Number nk = numV(key);
    int32_t k = lj_num2int(nk);
    if (nk == (lua_Number)k) {
      cTValue *tv = lj_tab_getint(t, k);
      if (tv)
 return tv;
    } else {
      goto genlookup;
    }
  } else if (!tvisnil(key)) {
    Node *n;
  genlookup:
    n = hashkey(t, key);
    do {
      if (lj_obj_equal(&n->key, key))
 return &n->val;
    } while ((n = nextnode(n)));
  }
  return niltv(L);
}
