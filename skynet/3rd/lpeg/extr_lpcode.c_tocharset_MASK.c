#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* cs; } ;
struct TYPE_7__ {int /*<<< orphan*/  n; } ;
struct TYPE_8__ {int tag; TYPE_1__ u; } ;
typedef  TYPE_2__ TTree ;
typedef  TYPE_3__ Charset ;

/* Variables and functions */
#define  TAny 130 
#define  TChar 129 
#define  TSet 128 
 int /*<<< orphan*/  UCHAR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t i ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC3 (TYPE_2__*) ; 

int FUNC4 (TTree *tree, Charset *cs) {
  switch (tree->tag) {
    case TSet: {  /* copy set */
      FUNC1(i, cs->cs[i] = FUNC3(tree)[i]);
      return 1;
    }
    case TChar: {  /* only one char */
      FUNC0(0 <= tree->u.n && tree->u.n <= UCHAR_MAX);
      FUNC1(i, cs->cs[i] = 0);  /* erase all chars */
      FUNC2(cs->cs, tree->u.n);  /* add that one */
      return 1;
    }
    case TAny: {
      FUNC1(i, cs->cs[i] = 0xFF);  /* add all characters to the set */
      return 1;
    }
    default: return 0;
  }
}