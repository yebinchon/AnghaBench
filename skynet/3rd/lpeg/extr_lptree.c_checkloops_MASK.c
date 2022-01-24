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
struct TYPE_8__ {size_t tag; } ;
typedef  TYPE_1__ TTree ;

/* Variables and functions */
 size_t TGrammar ; 
 size_t TRep ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int* numsiblings ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4 (TTree *tree) {
 tailcall:
  if (tree->tag == TRep && FUNC1(FUNC2(tree)))
    return 1;
  else if (tree->tag == TGrammar)
    return 0;  /* sub-grammars already checked */
  else {
    switch (numsiblings[tree->tag]) {
      case 1:  /* return checkloops(sib1(tree)); */
        tree = FUNC2(tree); goto tailcall;
      case 2:
        if (FUNC4(FUNC2(tree))) return 1;
        /* else return checkloops(sib2(tree)); */
        tree = FUNC3(tree); goto tailcall;
      default: FUNC0(numsiblings[tree->tag] == 0); return 0;
    }
  }
}