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
struct TYPE_11__ {int /*<<< orphan*/  top; } ;
struct TYPE_10__ {int /*<<< orphan*/ * redir; } ;
struct TYPE_9__ {scalar_t__ tok; TYPE_3__* L; int /*<<< orphan*/ * str; } ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_1__ CPState ;
typedef  TYPE_2__ CPDecl ;

/* Variables and functions */
 scalar_t__ CTOK_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(CPState *cp, CPDecl *decl)
{
  FUNC0(decl);
  FUNC2(cp);
  FUNC1(cp, '(');
  if (cp->tok == CTOK_STRING) {
    GCstr *str = cp->str;
    while (FUNC2(cp) == CTOK_STRING) {
      FUNC3(cp->L, "%s%s", FUNC5(str), FUNC5(cp->str));
      cp->L->top--;
      str = FUNC4(cp->L->top);
    }
    decl->redir = str;
  }
  FUNC1(cp, ')');
}