
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
typedef scalar_t__ lua_Number ;
typedef scalar_t__ int32_t ;
struct TYPE_14__ {int L; TYPE_2__* kt; int nkgc; int nkn; } ;
struct TYPE_13__ {int sizekgc; int sizekn; int k; } ;
struct TYPE_12__ {size_t asize; size_t hmask; int node; int array; } ;
struct TYPE_11__ {int key; int val; } ;
typedef int TValue ;
typedef TYPE_1__ Node ;
typedef size_t MSize ;
typedef TYPE_2__ GCtab ;
typedef TYPE_3__ GCproto ;
typedef int GCobj ;
typedef int GCRef ;
typedef TYPE_4__ FuncState ;


 scalar_t__ BCMAX_D ;
 scalar_t__ LJ_DUALNUM ;
 int checklimitgt (TYPE_4__*,int ,scalar_t__,char*) ;
 int fs_fixup_uv2 (TYPE_4__*,int ) ;
 int * gcV (int *) ;
 int gco2pt (int *) ;
 int lj_gc_objbarrier (int ,TYPE_3__*,int *) ;
 scalar_t__ lj_num2int (scalar_t__) ;
 int lua_assert (int) ;
 TYPE_1__* noderef (int ) ;
 scalar_t__ numV (int *) ;
 int setgcref (int ,int *) ;
 int setintV (int *,scalar_t__) ;
 int setmref (int ,void*) ;
 int setnumV (int *,scalar_t__) ;
 scalar_t__ tvhaskslot (int *) ;
 int tvisint (int *) ;
 int tvismzero (int *) ;
 scalar_t__ tvisnum (int *) ;
 scalar_t__ tvisproto (int *) ;
 size_t tvkslot (int *) ;
 int * tvref (int ) ;

__attribute__((used)) static void fs_fixup_k(FuncState *fs, GCproto *pt, void *kptr)
{
  GCtab *kt;
  TValue *array;
  Node *node;
  MSize i, hmask;
  checklimitgt(fs, fs->nkn, BCMAX_D+1, "constants");
  checklimitgt(fs, fs->nkgc, BCMAX_D+1, "constants");
  setmref(pt->k, kptr);
  pt->sizekn = fs->nkn;
  pt->sizekgc = fs->nkgc;
  kt = fs->kt;
  array = tvref(kt->array);
  for (i = 0; i < kt->asize; i++)
    if (tvhaskslot(&array[i])) {
      TValue *tv = &((TValue *)kptr)[tvkslot(&array[i])];
      if (LJ_DUALNUM)
 setintV(tv, (int32_t)i);
      else
 setnumV(tv, (lua_Number)i);
    }
  node = noderef(kt->node);
  hmask = kt->hmask;
  for (i = 0; i <= hmask; i++) {
    Node *n = &node[i];
    if (tvhaskslot(&n->val)) {
      ptrdiff_t kidx = (ptrdiff_t)tvkslot(&n->val);
      lua_assert(!tvisint(&n->key));
      if (tvisnum(&n->key)) {
 TValue *tv = &((TValue *)kptr)[kidx];
 if (LJ_DUALNUM) {
   lua_Number nn = numV(&n->key);
   int32_t k = lj_num2int(nn);
   lua_assert(!tvismzero(&n->key));
   if ((lua_Number)k == nn)
     setintV(tv, k);
   else
     *tv = n->key;
 } else {
   *tv = n->key;
 }
      } else {
 GCobj *o = gcV(&n->key);
 setgcref(((GCRef *)kptr)[~kidx], o);
 lj_gc_objbarrier(fs->L, pt, o);
 if (tvisproto(&n->key))
   fs_fixup_uv2(fs, gco2pt(o));
      }
    }
  }
}
