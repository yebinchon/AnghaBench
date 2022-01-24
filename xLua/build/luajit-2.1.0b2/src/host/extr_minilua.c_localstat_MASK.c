#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  k; } ;
typedef  TYPE_1__ expdesc ;
typedef  int /*<<< orphan*/  LexState ;

/* Variables and functions */
 int /*<<< orphan*/  VVOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void FUNC6(LexState*ls){
int nvars=0;
int nexps;
expdesc e;
do{
FUNC3(ls,FUNC4(ls),nvars++);
}while(FUNC5(ls,','));
if(FUNC5(ls,'='))
nexps=FUNC2(ls,&e);
else{
e.k=VVOID;
nexps=0;
}
FUNC0(ls,nvars,nexps,&e);
FUNC1(ls,nvars);
}