#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int tag; } ;
typedef  TYPE_1__ TTree ;

/* Variables and functions */
#define  TCall 132 
#define  TCapture 131 
#define  TOpenCall 130 
#define  TRule 129 
#define  TRunTime 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int (*) (TYPE_1__*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * numsiblings ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

int FUNC4 (TTree *tree) {
 tailcall:
  switch (tree->tag) {
    case TCapture: case TRunTime:
      return 1;
    case TCall:
      return FUNC1(tree, hascaptures, 0);
    case TRule:  /* do not follow siblings */
      tree = FUNC2(tree); goto tailcall;
    case TOpenCall: FUNC0(0);
    default: {
      switch (numsiblings[tree->tag]) {
        case 1:  /* return hascaptures(sib1(tree)); */
          tree = FUNC2(tree); goto tailcall;
        case 2:
          if (FUNC4(FUNC2(tree)))
            return 1;
          /* else return hascaptures(sib2(tree)); */
          tree = FUNC3(tree); goto tailcall;
        default: FUNC0(numsiblings[tree->tag] == 0); return 0;
      }
    }
  }
}