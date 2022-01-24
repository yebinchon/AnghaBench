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
struct TYPE_7__ {int info; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {scalar_t__ k; int t; int f; TYPE_2__ u; } ;
typedef  TYPE_3__ expdesc ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 scalar_t__ VJMP ; 
 scalar_t__ VNONRELOC ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int,int) ; 

__attribute__((used)) static void FUNC9(FuncState*fs,expdesc*e,int reg){
FUNC1(fs,e,reg);
if(e->k==VJMP)
FUNC3(fs,&e->t,e->u.s.info);
if(FUNC2(e)){
int final;
int p_f=(-1);
int p_t=(-1);
if(FUNC7(fs,e->t)||FUNC7(fs,e->f)){
int fj=(e->k==VJMP)?(-1):FUNC5(fs);
p_f=FUNC0(fs,reg,0,1);
p_t=FUNC0(fs,reg,1,0);
FUNC6(fs,fj);
}
final=FUNC4(fs);
FUNC8(fs,e->f,final,reg,p_f);
FUNC8(fs,e->t,final,reg,p_t);
}
e->f=e->t=(-1);
e->u.s.info=reg;
e->k=VNONRELOC;
}