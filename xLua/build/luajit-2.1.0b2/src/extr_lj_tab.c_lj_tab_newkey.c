
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_34__ ;
typedef struct TYPE_35__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_35__ {scalar_t__ u64; } ;
typedef TYPE_1__ cTValue ;
struct TYPE_38__ {scalar_t__ hmask; int node; } ;
struct TYPE_37__ {TYPE_1__ val; TYPE_1__ key; int next; } ;
struct TYPE_36__ {TYPE_3__ nilnode; } ;
typedef TYPE_1__ TValue ;
typedef TYPE_3__ Node ;
typedef TYPE_4__ GCtab ;


 TYPE_34__* G (int *) ;
 scalar_t__ LJ_UNLIKELY (int ) ;
 TYPE_3__* getfreetop (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* hashkey (TYPE_4__*,TYPE_1__*) ;
 TYPE_3__* hashstr (TYPE_4__*,int ) ;
 int lj_gc_anybarriert (int *,TYPE_4__*) ;
 TYPE_1__* lj_tab_set (int *,TYPE_4__*,TYPE_1__*) ;
 int lua_assert (int) ;
 TYPE_3__* nextnode (TYPE_3__*) ;
 TYPE_3__* noderef (int ) ;
 int rehashtab (int *,TYPE_4__*,TYPE_1__*) ;
 int setfreetop (TYPE_4__*,TYPE_3__*,TYPE_3__*) ;
 int setmref (int ,TYPE_3__*) ;
 int setmrefr (int ,int ) ;
 int setnilV (TYPE_1__*) ;
 int strV (TYPE_1__*) ;
 int tvismzero (TYPE_1__*) ;
 int tvisnil (TYPE_1__*) ;
 scalar_t__ tvisstr (TYPE_1__*) ;

TValue *lj_tab_newkey(lua_State *L, GCtab *t, cTValue *key)
{
  Node *n = hashkey(t, key);
  if (!tvisnil(&n->val) || t->hmask == 0) {
    Node *nodebase = noderef(t->node);
    Node *collide, *freenode = getfreetop(t, nodebase);
    lua_assert(freenode >= nodebase && freenode <= nodebase+t->hmask+1);
    do {
      if (freenode == nodebase) {
 rehashtab(L, t, key);
 return lj_tab_set(L, t, key);
      }
    } while (!tvisnil(&(--freenode)->key));
    setfreetop(t, nodebase, freenode);
    lua_assert(freenode != &G(L)->nilnode);
    collide = hashkey(t, &n->key);
    if (collide != n) {
      while (noderef(collide->next) != n)
 collide = nextnode(collide);
      setmref(collide->next, freenode);

      freenode->val = n->val;
      freenode->key = n->key;
      freenode->next = n->next;
      setmref(n->next, ((void*)0));
      setnilV(&n->val);

      while (nextnode(freenode)) {
 Node *nn = nextnode(freenode);
 if (tvisstr(&nn->key) && !tvisnil(&nn->val) &&
     hashstr(t, strV(&nn->key)) == n) {
   freenode->next = nn->next;
   nn->next = n->next;
   setmref(n->next, nn);
 } else {
   freenode = nn;
 }
      }
    } else {
      setmrefr(freenode->next, n->next);
      setmref(n->next, freenode);
      n = freenode;
    }
  }
  n->key.u64 = key->u64;
  if (LJ_UNLIKELY(tvismzero(&n->key)))
    n->key.u64 = 0;
  lj_gc_anybarriert(L, t);
  lua_assert(tvisnil(&n->val));
  return &n->val;
}
