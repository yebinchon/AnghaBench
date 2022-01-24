#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  int /*<<< orphan*/  CPState ;
typedef  TYPE_1__ CPDecl ;

/* Variables and functions */
 int /*<<< orphan*/  CPARSE_MODE_ABSTRACT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static CTypeID FUNC3(CPState *cp)
{
  CPDecl decl;
  FUNC1(cp, &decl, 0);
  decl.mode = CPARSE_MODE_ABSTRACT;
  FUNC2(cp, &decl);
  return FUNC0(cp, &decl);
}