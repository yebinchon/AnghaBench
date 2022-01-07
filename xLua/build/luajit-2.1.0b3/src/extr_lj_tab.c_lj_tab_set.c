
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ lua_Number ;
typedef scalar_t__ int32_t ;
typedef int cTValue ;
struct TYPE_12__ {scalar_t__ nomm; } ;
struct TYPE_11__ {int val; int key; } ;
typedef int TValue ;
typedef TYPE_1__ Node ;
typedef TYPE_2__ GCtab ;


 int LJ_ERR_NANIDX ;
 int LJ_ERR_NILIDX ;
 TYPE_1__* hashkey (TYPE_2__*,int *) ;
 scalar_t__ intV (int *) ;
 int lj_err_msg (int *,int ) ;
 scalar_t__ lj_num2int (scalar_t__) ;
 scalar_t__ lj_obj_equal (int *,int *) ;
 int * lj_tab_newkey (int *,TYPE_2__*,int *) ;
 int * lj_tab_setint (int *,TYPE_2__*,scalar_t__) ;
 int * lj_tab_setstr (int *,TYPE_2__*,int ) ;
 TYPE_1__* nextnode (TYPE_1__*) ;
 scalar_t__ numV (int *) ;
 int strV (int *) ;
 scalar_t__ tvisint (int *) ;
 scalar_t__ tvisnan (int *) ;
 scalar_t__ tvisnil (int *) ;
 scalar_t__ tvisnum (int *) ;
 scalar_t__ tvisstr (int *) ;

TValue *lj_tab_set(lua_State *L, GCtab *t, cTValue *key)
{
  Node *n;
  t->nomm = 0;
  if (tvisstr(key)) {
    return lj_tab_setstr(L, t, strV(key));
  } else if (tvisint(key)) {
    return lj_tab_setint(L, t, intV(key));
  } else if (tvisnum(key)) {
    lua_Number nk = numV(key);
    int32_t k = lj_num2int(nk);
    if (nk == (lua_Number)k)
      return lj_tab_setint(L, t, k);
    if (tvisnan(key))
      lj_err_msg(L, LJ_ERR_NANIDX);

  } else if (tvisnil(key)) {
    lj_err_msg(L, LJ_ERR_NILIDX);
  }
  n = hashkey(t, key);
  do {
    if (lj_obj_equal(&n->key, key))
      return &n->val;
  } while ((n = nextnode(n)));
  return lj_tab_newkey(L, t, key);
}
