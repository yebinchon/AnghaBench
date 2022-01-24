#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {scalar_t__ tok; TYPE_1__ val; } ;
typedef  TYPE_2__ CPState ;
typedef  int /*<<< orphan*/  CPDecl ;

/* Variables and functions */
 scalar_t__ CTOK_EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(CPState *cp)
{
  CPDecl decl;
  FUNC1(cp, &decl, 0);
  FUNC2(cp, &decl);
  cp->val.id = FUNC0(cp, &decl);
  if (cp->tok != CTOK_EOF) FUNC3(cp, CTOK_EOF);
}