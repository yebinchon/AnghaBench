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
struct TYPE_3__ {int /*<<< orphan*/ * style_sheet; } ;
typedef  TYPE_1__ HTMLStyleElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(HTMLDOMNode *iface)
{
    HTMLStyleElement *This = FUNC2(iface);

    if(This->style_sheet) {
        FUNC1(This->style_sheet);
        This->style_sheet = NULL;
    }

    FUNC0(iface);
}