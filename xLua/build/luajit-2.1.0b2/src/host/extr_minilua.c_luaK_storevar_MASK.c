#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int info; int aux; } ;
struct TYPE_11__ {TYPE_1__ s; } ;
struct TYPE_12__ {int k; TYPE_2__ u; } ;
typedef  TYPE_3__ expdesc ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_SETGLOBAL ; 
 int /*<<< orphan*/  OP_SETTABLE ; 
 int /*<<< orphan*/  OP_SETUPVAL ; 
#define  VGLOBAL 131 
#define  VINDEXED 130 
#define  VLOCAL 129 
#define  VUPVAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(FuncState*fs,expdesc*var,expdesc*ex){
switch(var->k){
case VLOCAL:{
FUNC1(fs,ex);
FUNC0(fs,ex,var->u.s.info);
return;
}
case VUPVAL:{
int e=FUNC5(fs,ex);
FUNC2(fs,OP_SETUPVAL,e,var->u.s.info,0);
break;
}
case VGLOBAL:{
int e=FUNC5(fs,ex);
FUNC3(fs,OP_SETGLOBAL,e,var->u.s.info);
break;
}
case VINDEXED:{
int e=FUNC4(fs,ex);
FUNC2(fs,OP_SETTABLE,var->u.s.info,var->u.s.aux,e);
break;
}
default:{
break;
}
}
FUNC1(fs,ex);
}