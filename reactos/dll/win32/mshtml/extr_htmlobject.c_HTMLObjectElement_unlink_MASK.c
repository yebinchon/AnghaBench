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
typedef  int /*<<< orphan*/  nsIDOMHTMLObjectElement ;
struct TYPE_3__ {int /*<<< orphan*/ * nsobject; } ;
typedef  TYPE_1__ HTMLObjectElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(HTMLDOMNode *iface)
{
    HTMLObjectElement *This = FUNC0(iface);

    if(This->nsobject) {
        nsIDOMHTMLObjectElement *nsobject = This->nsobject;

        This->nsobject = NULL;
        FUNC1(nsobject);
    }
}