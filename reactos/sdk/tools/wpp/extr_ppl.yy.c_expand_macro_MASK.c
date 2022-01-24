#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* mtext; } ;
struct TYPE_12__ {scalar_t__ type; scalar_t__ expanding; int nargs; char* ident; TYPE_1__ subst; } ;
typedef  TYPE_2__ pp_entry_t ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
typedef  TYPE_3__ mtext_t ;
struct TYPE_14__ {int nargs; scalar_t__* nnls; TYPE_2__* ppp; } ;
typedef  TYPE_4__ macexpstackentry_t ;
struct TYPE_15__ {char* input; int line_number; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_3__* FUNC1 (TYPE_3__*,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int curdef_idx ; 
 char* curdef_text ; 
 scalar_t__ def_macro ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int macexpstackidx ; 
 scalar_t__ pp_flex_debug ; 
 TYPE_6__ pp_status ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC9(macexpstackentry_t *mep)
{
	mtext_t *mtp;
	int n, k;
	char *cptr;
	int nnl = 0;
	pp_entry_t *ppp = mep->ppp;
	int nargs = mep->nargs;

	FUNC3(ppp->type == def_macro);
	FUNC3(ppp->expanding == 0);

	if((ppp->nargs >= 0 && nargs != ppp->nargs) || (ppp->nargs < 0 && nargs < -ppp->nargs))
	{
		FUNC7("Too %s macro arguments (%d)", nargs < FUNC0(ppp->nargs) ? "few" : "many", nargs);
		return;
	}

	for(n = 0; n < nargs; n++)
		nnl += mep->nnls[n];

	if(pp_flex_debug)
		FUNC4(stderr, "expand_macro(%d): %s:%d: '%s'(%d,%d) -> ...\n",
			macexpstackidx,
			pp_status.input,
			pp_status.line_number,
			ppp->ident,
			mep->nargs,
			nnl);

	curdef_idx = 0;

	for(mtp = ppp->subst.mtext; mtp; mtp = mtp->next)
	{
		if(!(mtp = FUNC1(mtp, mep, &nnl)))
			break;
	}

	for(n = 0; n < nnl; n++)
		FUNC2("\n", 1);

	/* To make sure there is room and termination (see below) */
	FUNC2(" \0", 2);

	/* Strip trailing whitespace from expansion */
	for(k = curdef_idx, cptr = &curdef_text[curdef_idx-1]; k > 0; k--, cptr--)
	{
		if(!FUNC5(*cptr & 0xff))
			break;
	}

	/*
	 * We must add *one* whitespace to make sure that there
	 * is a token-separation after the expansion.
	 */
	*(++cptr) = ' ';
	*(++cptr) = '\0';
	k++;

	/* Strip leading whitespace from expansion */
	for(n = 0, cptr = curdef_text; n < k; n++, cptr++)
	{
		if(!FUNC5(*cptr & 0xff))
			break;
	}

	if(k - n > 0)
	{
		if(pp_flex_debug)
			FUNC4(stderr, "expand_text: '%s'\n", curdef_text + n);
		FUNC8(ppp, NULL, NULL, 0);
		/*ppy__scan_bytes(curdef_text + n,k - n);*/
		FUNC6(curdef_text + n);
	}
}