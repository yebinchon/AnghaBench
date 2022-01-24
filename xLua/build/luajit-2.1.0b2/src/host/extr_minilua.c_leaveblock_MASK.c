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
struct TYPE_7__ {int /*<<< orphan*/  breaklist; int /*<<< orphan*/  nactvar; scalar_t__ upval; struct TYPE_7__* previous; } ;
struct TYPE_6__ {int /*<<< orphan*/  nactvar; int /*<<< orphan*/  freereg; int /*<<< orphan*/  ls; TYPE_2__* bl; } ;
typedef  TYPE_1__ FuncState ;
typedef  TYPE_2__ BlockCnt ;

/* Variables and functions */
 int /*<<< orphan*/  OP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(FuncState*fs){
BlockCnt*bl=fs->bl;
fs->bl=bl->previous;
FUNC2(fs->ls,bl->nactvar);
if(bl->upval)
FUNC0(fs,OP_CLOSE,bl->nactvar,0,0);
fs->freereg=fs->nactvar;
FUNC1(fs,bl->breaklist);
}