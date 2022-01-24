#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char** ppargs; int nargs; char* curarg; scalar_t__ curargsize; scalar_t__ curargalloc; TYPE_1__* ppp; } ;
typedef  TYPE_2__ macexpstackentry_t ;
struct TYPE_7__ {char* input; int line_number; } ;
struct TYPE_5__ {scalar_t__ expanding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ pp_flex_debug ; 
 TYPE_4__ pp_status ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_2__* FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	macexpstackentry_t *mep = FUNC4();

	FUNC0(mep->ppp->expanding == 0);

	mep->ppargs[mep->nargs-1] = FUNC3(mep->curarg ? mep->curarg : "");
	FUNC2(mep->curarg);
	mep->curargalloc = mep->curargsize = 0;
	mep->curarg = NULL;

	if(pp_flex_debug)
		FUNC1(stderr, "macro_add_expansion: %s:%d: %d -> '%s'\n",
			pp_status.input,
			pp_status.line_number,
			mep->nargs-1,
			mep->ppargs[mep->nargs-1] ? mep->ppargs[mep->nargs-1] : "");
}