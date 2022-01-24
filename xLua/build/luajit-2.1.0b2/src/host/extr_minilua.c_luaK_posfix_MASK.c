#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  info; } ;
struct TYPE_16__ {TYPE_1__ s; } ;
struct TYPE_17__ {TYPE_2__ u; int /*<<< orphan*/  k; int /*<<< orphan*/  t; int /*<<< orphan*/  f; } ;
typedef  TYPE_3__ expdesc ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int BinOpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  OPR_ADD 142 
#define  OPR_AND 141 
#define  OPR_CONCAT 140 
#define  OPR_DIV 139 
#define  OPR_EQ 138 
#define  OPR_GE 137 
#define  OPR_GT 136 
#define  OPR_LE 135 
#define  OPR_LT 134 
#define  OPR_MOD 133 
#define  OPR_MUL 132 
#define  OPR_NE 131 
#define  OPR_OR 130 
#define  OPR_POW 129 
#define  OPR_SUB 128 
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  OP_CONCAT ; 
 int /*<<< orphan*/  OP_DIV ; 
 int /*<<< orphan*/  OP_EQ ; 
 int /*<<< orphan*/  OP_LE ; 
 int /*<<< orphan*/  OP_LT ; 
 int /*<<< orphan*/  OP_MOD ; 
 int /*<<< orphan*/  OP_MUL ; 
 int /*<<< orphan*/  OP_POW ; 
 int /*<<< orphan*/  OP_SUB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VRELOCABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(FuncState*fs,BinOpr op,expdesc*e1,expdesc*e2){
switch(op){
case OPR_AND:{
FUNC7(fs,e2);
FUNC6(fs,&e2->f,e1->f);
*e1=*e2;
break;
}
case OPR_OR:{
FUNC7(fs,e2);
FUNC6(fs,&e2->t,e1->t);
*e1=*e2;
break;
}
case OPR_CONCAT:{
FUNC9(fs,e2);
if(e2->k==VRELOCABLE&&FUNC0(FUNC5(fs,e2))==OP_CONCAT){
FUNC4(fs,e1);
FUNC1(FUNC5(fs,e2),e1->u.s.info);
e1->k=VRELOCABLE;e1->u.s.info=e2->u.s.info;
}
else{
FUNC8(fs,e2);
FUNC2(fs,OP_CONCAT,e1,e2);
}
break;
}
case OPR_ADD:FUNC2(fs,OP_ADD,e1,e2);break;
case OPR_SUB:FUNC2(fs,OP_SUB,e1,e2);break;
case OPR_MUL:FUNC2(fs,OP_MUL,e1,e2);break;
case OPR_DIV:FUNC2(fs,OP_DIV,e1,e2);break;
case OPR_MOD:FUNC2(fs,OP_MOD,e1,e2);break;
case OPR_POW:FUNC2(fs,OP_POW,e1,e2);break;
case OPR_EQ:FUNC3(fs,OP_EQ,1,e1,e2);break;
case OPR_NE:FUNC3(fs,OP_EQ,0,e1,e2);break;
case OPR_LT:FUNC3(fs,OP_LT,1,e1,e2);break;
case OPR_LE:FUNC3(fs,OP_LE,1,e1,e2);break;
case OPR_GT:FUNC3(fs,OP_LT,0,e1,e2);break;
case OPR_GE:FUNC3(fs,OP_LE,0,e1,e2);break;
default:;
}
}