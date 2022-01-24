#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_8__ {int tag; int key; } ;
typedef  TYPE_1__ TTree ;

/* Variables and functions */
 int MAXRULES ; 
#define  TAnd 143 
#define  TAny 142 
#define  TBehind 141 
#define  TCall 140 
#define  TCapture 139 
#define  TChar 138 
#define  TChoice 137 
#define  TFalse 136 
#define  TGrammar 135 
#define  TNot 134 
#define  TRep 133 
#define  TRule 132 
#define  TRunTime 131 
#define  TSeq 130 
#define  TSet 129 
#define  TTrue 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static int FUNC5 (lua_State *L, TTree *tree, int *passed, int npassed,
                       int nb) {
 tailcall:
  switch (tree->tag) {
    case TChar: case TSet: case TAny:
    case TFalse:
      return nb;  /* cannot pass from here */
    case TTrue:
    case TBehind:  /* look-behind cannot have calls */
      return 1;
    case TNot: case TAnd: case TRep:
      /* return verifyrule(L, sib1(tree), passed, npassed, 1); */
      tree = FUNC2(tree); nb = 1; goto tailcall;
    case TCapture: case TRunTime:
      /* return verifyrule(L, sib1(tree), passed, npassed, nb); */
      tree = FUNC2(tree); goto tailcall;
    case TCall:
      /* return verifyrule(L, sib2(tree), passed, npassed, nb); */
      tree = FUNC3(tree); goto tailcall;
    case TSeq:  /* only check 2nd child if first is nb */
      if (!FUNC5(L, FUNC2(tree), passed, npassed, 0))
        return nb;
      /* else return verifyrule(L, sib2(tree), passed, npassed, nb); */
      tree = FUNC3(tree); goto tailcall;
    case TChoice:  /* must check both children */
      nb = FUNC5(L, FUNC2(tree), passed, npassed, nb);
      /* return verifyrule(L, sib2(tree), passed, npassed, nb); */
      tree = FUNC3(tree); goto tailcall;
    case TRule:
      if (npassed >= MAXRULES)
        return FUNC4(L, passed, npassed);
      else {
        passed[npassed++] = tree->key;
        /* return verifyrule(L, sib1(tree), passed, npassed); */
        tree = FUNC2(tree); goto tailcall;
      }
    case TGrammar:
      return FUNC1(tree);  /* sub-grammar cannot be left recursive */
    default: FUNC0(0); return 0;
  }
}