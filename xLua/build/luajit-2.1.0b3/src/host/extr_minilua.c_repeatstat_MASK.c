#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  upval; } ;
struct TYPE_10__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  TYPE_2__ BlockCnt ;

/* Variables and functions */
 int /*<<< orphan*/  TK_REPEAT ; 
 int /*<<< orphan*/  TK_UNTIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(LexState*ls,int line){
int condexit;
FuncState*fs=ls->fs;
int repeat_init=FUNC6(fs);
BlockCnt bl1,bl2;
FUNC4(fs,&bl1,1);
FUNC4(fs,&bl2,0);
FUNC10(ls);
FUNC2(ls);
FUNC1(ls,TK_UNTIL,TK_REPEAT,line);
condexit=FUNC3(ls);
if(!bl2.upval){
FUNC5(fs);
FUNC8(ls->fs,condexit,repeat_init);
}
else{
FUNC0(ls);
FUNC9(ls->fs,condexit);
FUNC5(fs);
FUNC8(ls->fs,FUNC7(fs),repeat_init);
}
FUNC5(fs);
}