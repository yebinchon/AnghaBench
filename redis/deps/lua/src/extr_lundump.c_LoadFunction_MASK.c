#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ nCcalls; int /*<<< orphan*/  top; } ;
struct TYPE_22__ {TYPE_3__* L; } ;
struct TYPE_21__ {void* maxstacksize; void* is_vararg; void* numparams; void* nups; void* lastlinedefined; void* linedefined; int /*<<< orphan*/ * source; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ Proto ;
typedef  TYPE_2__ LoadState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ LUAI_MAXCCALLS ; 
 void* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 void* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_1__* FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static Proto* FUNC12(LoadState* S, TString* p)
{
 Proto* f;
 if (++S->L->nCcalls > LUAI_MAXCCALLS) FUNC7(S,"code too deep");
 f=FUNC9(S->L);
 FUNC11(S->L,S->L->top,f); FUNC8(S->L);
 f->source=FUNC6(S); if (f->source==NULL) f->source=p;
 f->linedefined=FUNC5(S);
 f->lastlinedefined=FUNC5(S);
 f->nups=FUNC1(S);
 f->numparams=FUNC1(S);
 f->is_vararg=FUNC1(S);
 f->maxstacksize=FUNC1(S);
 FUNC2(S,f);
 FUNC3(S,f);
 FUNC4(S,f);
 FUNC0 (!FUNC10(f), "bad code");
 S->L->top--;
 S->L->nCcalls--;
 return f;
}