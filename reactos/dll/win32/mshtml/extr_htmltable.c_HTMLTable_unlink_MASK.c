#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMHTMLTableElement ;
struct TYPE_3__ {int /*<<< orphan*/ * nstable; } ;
typedef  TYPE_1__ HTMLTable ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(HTMLDOMNode *iface)
{
    HTMLTable *This = FUNC0(iface);

    if(This->nstable) {
        nsIDOMHTMLTableElement *nstable = This->nstable;

        This->nstable = NULL;
        FUNC1(nstable);
    }
}