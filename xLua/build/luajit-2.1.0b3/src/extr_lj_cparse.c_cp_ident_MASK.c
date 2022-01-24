#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  info; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_3__* ct; int /*<<< orphan*/  tmask; int /*<<< orphan*/  str; int /*<<< orphan*/  cts; TYPE_1__ val; int /*<<< orphan*/  sb; int /*<<< orphan*/  L; int /*<<< orphan*/  c; } ;
typedef  int /*<<< orphan*/  CPToken ;
typedef  TYPE_2__ CPState ;

/* Variables and functions */
 int /*<<< orphan*/  CTOK_IDENT ; 
 scalar_t__ CT_KW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CPToken FUNC7(CPState *cp)
{
  do { FUNC1(cp, cp->c); } while (FUNC5(FUNC0(cp)));
  cp->str = FUNC4(cp->L, &cp->sb);
  cp->val.id = FUNC6(cp->cts, &cp->ct, cp->str, cp->tmask);
  if (FUNC3(cp->ct->info) == CT_KW)
    return FUNC2(cp->ct->info);
  return CTOK_IDENT;
}