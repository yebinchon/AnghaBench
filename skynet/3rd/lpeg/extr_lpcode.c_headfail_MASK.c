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
struct TYPE_8__ {int tag; } ;
typedef  TYPE_1__ TTree ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4 (TTree *tree) {
 tailcall:
  switch (tree->tag) {
    case TChar: case TSet: case TAny: case TFalse:
      return 1;
    case TTrue: case TRep: case TRunTime: case TNot:
    case TBehind:
      return 0;
    case TCapture: case TGrammar: case TRule: case TAnd:
      tree = FUNC2(tree); goto tailcall;  /* return headfail(sib1(tree)); */
    case TCall:
      tree = FUNC3(tree); goto tailcall;  /* return headfail(sib2(tree)); */
    case TSeq:
      if (!FUNC1(FUNC3(tree))) return 0;
      /* else return headfail(sib1(tree)); */
      tree = FUNC2(tree); goto tailcall;
    case TChoice:
      if (!FUNC4(FUNC2(tree))) return 0;
      /* else return headfail(sib2(tree)); */
      tree = FUNC3(tree); goto tailcall;
    default: FUNC0(0); return 0;
  }
}