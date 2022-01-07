
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int weak; } ;
struct TYPE_17__ {TYPE_1__ gc; } ;
typedef TYPE_2__ global_State ;
typedef int cTValue ;
struct TYPE_19__ {int marked; scalar_t__ asize; scalar_t__ hmask; int node; int gclist; int metatable; } ;
struct TYPE_18__ {int val; int key; } ;
typedef TYPE_3__ Node ;
typedef scalar_t__ MSize ;
typedef TYPE_4__ GCtab ;


 int LJ_GC_WEAK ;
 int LJ_GC_WEAKKEY ;
 int LJ_GC_WEAKVAL ;
 int MM_mode ;
 int * arrayslot (TYPE_4__*,scalar_t__) ;
 int gc_markobj (TYPE_2__*,TYPE_4__*) ;
 int gc_marktv (TYPE_2__*,int *) ;
 int * lj_meta_fastg (TYPE_2__*,TYPE_4__*,int ) ;
 int lua_assert (int) ;
 TYPE_3__* noderef (int ) ;
 int obj2gco (TYPE_4__*) ;
 int setgcref (int ,int ) ;
 int setgcrefr (int ,int ) ;
 char* strVdata (int *) ;
 TYPE_4__* tabref (int ) ;
 int tvisnil (int *) ;
 scalar_t__ tvisstr (int *) ;

__attribute__((used)) static int gc_traverse_tab(global_State *g, GCtab *t)
{
  int weak = 0;
  cTValue *mode;
  GCtab *mt = tabref(t->metatable);
  if (mt)
    gc_markobj(g, mt);
  mode = lj_meta_fastg(g, mt, MM_mode);
  if (mode && tvisstr(mode)) {
    const char *modestr = strVdata(mode);
    int c;
    while ((c = *modestr++)) {
      if (c == 'k') weak |= LJ_GC_WEAKKEY;
      else if (c == 'v') weak |= LJ_GC_WEAKVAL;
      else if (c == 'K') weak = (int)(~0u & ~LJ_GC_WEAKVAL);
    }
    if (weak > 0) {
      t->marked = (uint8_t)((t->marked & ~LJ_GC_WEAK) | weak);
      setgcrefr(t->gclist, g->gc.weak);
      setgcref(g->gc.weak, obj2gco(t));
    }
  }
  if (weak == LJ_GC_WEAK)
    return 1;
  if (!(weak & LJ_GC_WEAKVAL)) {
    MSize i, asize = t->asize;
    for (i = 0; i < asize; i++)
      gc_marktv(g, arrayslot(t, i));
  }
  if (t->hmask > 0) {
    Node *node = noderef(t->node);
    MSize i, hmask = t->hmask;
    for (i = 0; i <= hmask; i++) {
      Node *n = &node[i];
      if (!tvisnil(&n->val)) {
 lua_assert(!tvisnil(&n->key));
 if (!(weak & LJ_GC_WEAKKEY)) gc_marktv(g, &n->key);
 if (!(weak & LJ_GC_WEAKVAL)) gc_marktv(g, &n->val);
      }
    }
  }
  return weak;
}
