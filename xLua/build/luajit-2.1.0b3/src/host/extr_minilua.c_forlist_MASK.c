#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_14__ {int freereg; } ;
struct TYPE_13__ {int linenumber; TYPE_2__* fs; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ LexState ;
typedef  TYPE_2__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  TK_IN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char) ; 

__attribute__((used)) static void FUNC9(LexState*ls,TString*indexname){
FuncState*fs=ls->fs;
expdesc e;
int nvars=0;
int line;
int base=fs->freereg;
FUNC6(ls,"(for generator)",nvars++);
FUNC6(ls,"(for state)",nvars++);
FUNC6(ls,"(for control)",nvars++);
FUNC5(ls,indexname,nvars++);
while(FUNC8(ls,','))
FUNC5(ls,FUNC7(ls),nvars++);
FUNC1(ls,TK_IN);
line=ls->linenumber;
FUNC0(ls,3,FUNC2(ls,&e),&e);
FUNC4(fs,3);
FUNC3(ls,base,line,nvars-3,0);
}