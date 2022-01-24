#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_11__ {int tag; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ TTree ;

/* Variables and functions */
#define  TChoice 131 
#define  TGrammar 130 
#define  TOpenCall 129 
#define  TSeq 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int* numsiblings ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8 (lua_State *L, int postable, TTree *g, TTree *t) {
 tailcall:
  switch (t->tag) {
    case TGrammar:  /* subgrammars were already fixed */
      return;
    case TOpenCall: {
      if (g != NULL)  /* inside a grammar? */
        FUNC2(L, postable, g, t);
      else {  /* open call outside grammar */
        FUNC4(L, -1, t->key);
        FUNC3(L, "rule '%s' used outside a grammar", FUNC7(L, -1));
      }
      break;
    }
    case TSeq: case TChoice:
      FUNC1(t);
      break;
  }
  switch (numsiblings[t->tag]) {
    case 1: /* finalfix(L, postable, g, sib1(t)); */
      t = FUNC5(t); goto tailcall;
    case 2:
      FUNC8(L, postable, g, FUNC5(t));
      t = FUNC6(t); goto tailcall;  /* finalfix(L, postable, g, sib2(t)); */
    default: FUNC0(numsiblings[t->tag] == 0); break;
  }
}