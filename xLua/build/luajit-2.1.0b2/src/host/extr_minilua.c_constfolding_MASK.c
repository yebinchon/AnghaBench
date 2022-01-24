#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_Number ;
struct TYPE_6__ {int /*<<< orphan*/  nval; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef  TYPE_2__ expdesc ;
typedef  int OpCode ;

/* Variables and functions */
#define  OP_ADD 135 
#define  OP_DIV 134 
#define  OP_LEN 133 
#define  OP_MOD 132 
#define  OP_MUL 131 
#define  OP_POW 130 
#define  OP_SUB 129 
#define  OP_UNM 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(OpCode op,expdesc*e1,expdesc*e2){
lua_Number v1,v2,r;
if(!FUNC0(e1)||!FUNC0(e2))return 0;
v1=e1->u.nval;
v2=e2->u.nval;
switch(op){
case OP_ADD:r=FUNC1(v1,v2);break;
case OP_SUB:r=FUNC7(v1,v2);break;
case OP_MUL:r=FUNC5(v1,v2);break;
case OP_DIV:
if(v2==0)return 0;
r=FUNC2(v1,v2);break;
case OP_MOD:
if(v2==0)return 0;
r=FUNC4(v1,v2);break;
case OP_POW:r=FUNC6(v1,v2);break;
case OP_UNM:r=FUNC8(v1);break;
case OP_LEN:return 0;
default:r=0;break;
}
if(FUNC3(r))return 0;
e1->u.nval=r;
return 1;
}