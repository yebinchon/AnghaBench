#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Instruction ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_TEST ; 
 scalar_t__ OP_TESTSET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(FuncState*fs,int node,int reg){
Instruction*i=FUNC5(fs,node);
if(FUNC3(*i)!=OP_TESTSET)
return 0;
if(reg!=((1<<8)-1)&&reg!=FUNC1(*i))
FUNC4(*i,reg);
else
*i=FUNC0(OP_TEST,FUNC1(*i),0,FUNC2(*i));
return 1;
}