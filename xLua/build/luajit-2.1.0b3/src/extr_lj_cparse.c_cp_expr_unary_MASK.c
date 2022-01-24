#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ depth; } ;
typedef  int /*<<< orphan*/  CPValue ;
typedef  TYPE_1__ CPState ;

/* Variables and functions */
 scalar_t__ CPARSE_MAX_DECLDEPTH ; 
 int /*<<< orphan*/  LJ_ERR_XLEVELS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(CPState *cp, CPValue *k)
{
  if (++cp->depth > CPARSE_MAX_DECLDEPTH) FUNC0(cp, LJ_ERR_XLEVELS);
  FUNC2(cp, k);
  FUNC1(cp, k);
  cp->depth--;
}