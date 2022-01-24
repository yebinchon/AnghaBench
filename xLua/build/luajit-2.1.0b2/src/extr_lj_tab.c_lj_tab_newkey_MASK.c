#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_34__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_35__ {scalar_t__ u64; } ;
typedef  TYPE_1__ cTValue ;
struct TYPE_38__ {scalar_t__ hmask; int /*<<< orphan*/  node; } ;
struct TYPE_37__ {TYPE_1__ val; TYPE_1__ key; int /*<<< orphan*/  next; } ;
struct TYPE_36__ {TYPE_3__ nilnode; } ;
typedef  TYPE_1__ TValue ;
typedef  TYPE_3__ Node ;
typedef  TYPE_4__ GCtab ;

/* Variables and functions */
 TYPE_34__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,TYPE_1__*) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_3__* FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int FUNC17 (TYPE_1__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 

TValue *FUNC19(lua_State *L, GCtab *t, cTValue *key)
{
  Node *n = FUNC3(t, key);
  if (!FUNC17(&n->val) || t->hmask == 0) {
    Node *nodebase = FUNC9(t->node);
    Node *collide, *freenode = FUNC2(t, nodebase);
    FUNC7(freenode >= nodebase && freenode <= nodebase+t->hmask+1);
    do {
      if (freenode == nodebase) {  /* No free node found? */
	FUNC10(L, t, key);  /* Rehash table. */
	return FUNC6(L, t, key);  /* Retry key insertion. */
      }
    } while (!FUNC17(&(--freenode)->key));
    FUNC11(t, nodebase, freenode);
    FUNC7(freenode != &FUNC0(L)->nilnode);
    collide = FUNC3(t, &n->key);
    if (collide != n) {  /* Colliding node not the main node? */
      while (FUNC9(collide->next) != n)  /* Find predecessor. */
	collide = FUNC8(collide);
      FUNC12(collide->next, freenode);  /* Relink chain. */
      /* Copy colliding node into free node and free main node. */
      freenode->val = n->val;
      freenode->key = n->key;
      freenode->next = n->next;
      FUNC12(n->next, NULL);
      FUNC14(&n->val);
      /* Rechain pseudo-resurrected string keys with colliding hashes. */
      while (FUNC8(freenode)) {
	Node *nn = FUNC8(freenode);
	if (FUNC18(&nn->key) && !FUNC17(&nn->val) &&
	    FUNC4(t, FUNC15(&nn->key)) == n) {
	  freenode->next = nn->next;
	  nn->next = n->next;
	  FUNC12(n->next, nn);
	} else {
	  freenode = nn;
	}
      }
    } else {  /* Otherwise use free node. */
      FUNC13(freenode->next, n->next);  /* Insert into chain. */
      FUNC12(n->next, freenode);
      n = freenode;
    }
  }
  n->key.u64 = key->u64;
  if (FUNC1(FUNC16(&n->key)))
    n->key.u64 = 0;
  FUNC5(L, t);
  FUNC7(FUNC17(&n->val));
  return &n->val;
}