#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  token; } ;
struct TYPE_11__ {TYPE_2__* fs; TYPE_1__ t; } ;
struct TYPE_10__ {int /*<<< orphan*/  nactvar; int /*<<< orphan*/  freereg; } ;
typedef  TYPE_3__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char) ; 

__attribute__((used)) static void FUNC5(LexState*ls){
int islast=0;
FUNC1(ls);
while(!islast&&!FUNC0(ls->t.token)){
islast=FUNC3(ls);
FUNC4(ls,';');
ls->fs->freereg=ls->fs->nactvar;
}
FUNC2(ls);
}