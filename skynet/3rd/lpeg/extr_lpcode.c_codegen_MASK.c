#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  n; } ;
struct TYPE_16__ {int tag; TYPE_1__ u; } ;
typedef  TYPE_2__ TTree ;
typedef  int /*<<< orphan*/  CompileState ;
typedef  int /*<<< orphan*/  Charset ;

/* Variables and functions */
 int /*<<< orphan*/  IAny ; 
 int /*<<< orphan*/  IFail ; 
#define  TAnd 142 
#define  TAny 141 
#define  TBehind 140 
#define  TCall 139 
#define  TCapture 138 
#define  TChar 137 
#define  TChoice 136 
#define  TFalse 135 
#define  TGrammar 134 
#define  TNot 133 
#define  TRep 132 
#define  TRunTime 131 
#define  TSeq 130 
#define  TSet 129 
#define  TTrue 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 TYPE_2__* FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC17 (CompileState *compst, TTree *tree, int opt, int tt,
                     const Charset *fl) {
 tailcall:
  switch (tree->tag) {
    case TChar: FUNC6(compst, tree->u.n, tt); break;
    case TAny: FUNC0(compst, IAny, 0); break;
    case TSet: FUNC7(compst, FUNC16(tree), tt); break;
    case TTrue: break;
    case TFalse: FUNC0(compst, IFail, 0); break;
    case TChoice: FUNC8(compst, FUNC14(tree), FUNC15(tree), opt, fl); break;
    case TRep: FUNC11(compst, FUNC14(tree), opt, fl); break;
    case TBehind: FUNC3(compst, tree); break;
    case TNot: FUNC10(compst, FUNC14(tree)); break;
    case TAnd: FUNC2(compst, FUNC14(tree), tt); break;
    case TCapture: FUNC5(compst, tree, tt, fl); break;
    case TRunTime: FUNC12(compst, tree, tt); break;
    case TGrammar: FUNC9(compst, tree); break;
    case TCall: FUNC4(compst, tree); break;
    case TSeq: {
      tt = FUNC13(compst, FUNC14(tree), FUNC15(tree), tt, fl);  /* code 'p1' */
      /* codegen(compst, p2, opt, tt, fl); */
      tree = FUNC15(tree); goto tailcall;
    }
    default: FUNC1(0);
  }
}