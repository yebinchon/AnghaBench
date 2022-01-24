#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symbol {int prec; scalar_t__ useCnt; int /*<<< orphan*/  name; scalar_t__ datatype; scalar_t__ destLineno; scalar_t__ destructor; int /*<<< orphan*/  lambda; scalar_t__ firstset; int /*<<< orphan*/  assoc; scalar_t__ fallback; scalar_t__ rule; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  LEMON_FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  NONTERMINAL ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 struct symbol* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TERMINAL ; 
 int /*<<< orphan*/  UNK ; 
 scalar_t__ FUNC5 (int,int) ; 

struct symbol *FUNC6(const char *x)
{
  struct symbol *sp;

  sp = FUNC3(x);
  if( sp==0 ){
    sp = (struct symbol *)FUNC5(1, sizeof(struct symbol) );
    FUNC1(sp);
    sp->name = FUNC2(x);
    sp->type = FUNC0(*x) ? TERMINAL : NONTERMINAL;
    sp->rule = 0;
    sp->fallback = 0;
    sp->prec = -1;
    sp->assoc = UNK;
    sp->firstset = 0;
    sp->lambda = LEMON_FALSE;
    sp->destructor = 0;
    sp->destLineno = 0;
    sp->datatype = 0;
    sp->useCnt = 0;
    FUNC4(sp,sp->name);
  }
  sp->useCnt++;
  return sp;
}