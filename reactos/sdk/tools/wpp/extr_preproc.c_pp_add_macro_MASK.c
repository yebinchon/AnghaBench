#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* mtext; } ;
struct TYPE_15__ {int linenumber; char* ident; int nargs; struct TYPE_15__* prev; struct TYPE_15__* next; int /*<<< orphan*/  filename; TYPE_1__ subst; int /*<<< orphan*/ ** margs; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ pp_entry_t ;
struct TYPE_14__ {char* text; int argidx; } ;
struct TYPE_16__ {int type; TYPE_2__ subst; struct TYPE_16__* next; } ;
typedef  TYPE_4__ mtext_t ;
typedef  int /*<<< orphan*/  marg_t ;
struct TYPE_18__ {TYPE_3__** defines; } ;
struct TYPE_17__ {char* input; int line_number; scalar_t__ debug; scalar_t__ pedantic; } ;

/* Variables and functions */
 int /*<<< orphan*/  def_macro ; 
#define  exp_concat 131 
#define  exp_stringize 130 
#define  exp_subst 129 
#define  exp_text 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_8__* pp_def_state ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_7__ pp_status ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 TYPE_3__* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

pp_entry_t *FUNC9(char *id, marg_t *args[], int nargs, mtext_t *exp)
{
	int idx;
	pp_entry_t *ppp;

	if(!id)
		return NULL;
	idx = FUNC6(id);
	if((ppp = FUNC7(id)) != NULL)
	{
		if(pp_status.pedantic)
			FUNC8("Redefinition of %s\n\tPrevious definition: %s:%d", id, ppp->filename, ppp->linenumber);
		FUNC3(id);
	}
	ppp = FUNC4(sizeof(pp_entry_t));
	if(!ppp)
		return NULL;
	FUNC2( ppp, 0, sizeof(*ppp) );
	ppp->ident	= id;
	ppp->type	= def_macro;
	ppp->margs	= args;
	ppp->nargs	= nargs;
	ppp->subst.mtext= exp;
	ppp->filename = FUNC5(pp_status.input ? pp_status.input : "<internal or cmdline>");
	if(!ppp->filename)
	{
		FUNC1(ppp);
		return NULL;
	}
	ppp->linenumber = pp_status.input ? pp_status.line_number : 0;
	ppp->next	= pp_def_state->defines[idx];
	pp_def_state->defines[idx] = ppp;
	if(ppp->next)
		ppp->next->prev = ppp;

	if(pp_status.debug)
	{
		FUNC0(stderr, "Added macro (%s, %d) <%s(%d)> to <", pp_status.input, pp_status.line_number, ppp->ident, nargs);
		for(; exp; exp = exp->next)
		{
			switch(exp->type)
			{
			case exp_text:
				FUNC0(stderr, " \"%s\" ", exp->subst.text);
				break;
			case exp_stringize:
				FUNC0(stderr, " #(%d) ", exp->subst.argidx);
				break;
			case exp_concat:
				FUNC0(stderr, "##");
				break;
			case exp_subst:
				FUNC0(stderr, " <%d> ", exp->subst.argidx);
				break;
			}
		}
		FUNC0(stderr, ">\n");
	}
	return ppp;
}