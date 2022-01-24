#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* maxstacksize; void* is_vararg; void* numparams; void* lastlinedefined; void* linedefined; int /*<<< orphan*/ * source; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ Proto ;
typedef  int /*<<< orphan*/  LoadState ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC8 (LoadState *S, Proto *f, TString *psource) {
  f->source = FUNC6(S);
  if (f->source == NULL)  /* no source in dump? */
    f->source = psource;  /* reuse parent's source */
  f->linedefined = FUNC4(S);
  f->lastlinedefined = FUNC4(S);
  f->numparams = FUNC0(S);
  f->is_vararg = FUNC0(S);
  f->maxstacksize = FUNC0(S);
  FUNC1(S, f);
  FUNC2(S, f);
  FUNC7(S, f);
  FUNC5(S, f);
  FUNC3(S, f);
}