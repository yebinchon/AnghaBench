#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  oInst; } ;
struct TYPE_5__ {int /*<<< orphan*/  varkind; int /*<<< orphan*/  wVarFlags; int /*<<< orphan*/  elemdescVar; TYPE_1__ u; int /*<<< orphan*/  lpstrSchema; int /*<<< orphan*/  memid; } ;
typedef  TYPE_2__ VARDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(const VARDESC *v)
{
    FUNC0("memid %d\n",v->memid);
    FUNC0("lpstrSchema %s\n",FUNC1(v->lpstrSchema));
    FUNC0("oInst %d\n",v->u.oInst);
    FUNC2(&(v->elemdescVar));
    FUNC0("wVarFlags %x\n",v->wVarFlags);
    FUNC0("varkind %d\n",v->varkind);
}