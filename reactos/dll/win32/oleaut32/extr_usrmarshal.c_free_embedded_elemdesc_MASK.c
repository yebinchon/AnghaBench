#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int wParamFlags; int /*<<< orphan*/  pparamdescex; } ;
struct TYPE_6__ {TYPE_1__ paramdesc; } ;
struct TYPE_7__ {TYPE_2__ u; int /*<<< orphan*/  tdesc; } ;
typedef  TYPE_3__ ELEMDESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PARAMFLAG_FHASDEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(ELEMDESC *edesc)
{
    FUNC1(&edesc->tdesc);
    if(edesc->u.paramdesc.wParamFlags & PARAMFLAG_FHASDEFAULT)
        FUNC0(edesc->u.paramdesc.pparamdescex);
}