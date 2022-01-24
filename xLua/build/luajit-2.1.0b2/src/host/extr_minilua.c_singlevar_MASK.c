#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  info; } ;
struct TYPE_10__ {TYPE_1__ s; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
typedef  TYPE_3__ expdesc ;
struct TYPE_12__ {int /*<<< orphan*/ * fs; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_4__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 scalar_t__ VGLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC3(LexState*ls,expdesc*var){
TString*varname=FUNC2(ls);
FuncState*fs=ls->fs;
if(FUNC1(fs,varname,var,1)==VGLOBAL)
var->u.s.info=FUNC0(fs,varname);
}