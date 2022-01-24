#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct ConsControl {TYPE_4__* t; int /*<<< orphan*/  nh; } ;
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_20__ {int freereg; } ;
struct TYPE_15__ {scalar_t__ token; } ;
struct TYPE_19__ {TYPE_1__ t; TYPE_6__* fs; } ;
struct TYPE_16__ {int /*<<< orphan*/  info; } ;
struct TYPE_17__ {TYPE_2__ s; } ;
struct TYPE_18__ {TYPE_3__ u; } ;
typedef  TYPE_5__ LexState ;
typedef  TYPE_6__ FuncState ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  OP_SETTABLE ; 
 scalar_t__ TK_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(LexState*ls,struct ConsControl*cc){
FuncState*fs=ls->fs;
int reg=ls->fs->freereg;
expdesc key,val;
int rkkey;
if(ls->t.token==TK_NAME){
FUNC5(fs,cc->nh,(INT_MAX-2),"items in a constructor");
FUNC0(ls,&key);
}
else
FUNC6(ls,&key);
cc->nh++;
FUNC1(ls,'=');
rkkey=FUNC4(fs,&key);
FUNC2(ls,&val);
FUNC3(fs,OP_SETTABLE,cc->t->u.s.info,rkkey,FUNC4(fs,&val));
fs->freereg=reg;
}